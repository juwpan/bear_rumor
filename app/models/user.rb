class User < ApplicationRecord
  has_many :songs, dependent: :destroy

  has_one_attached :avatar do |attachable|
    attachable.variant :thumb, resize_to_fill: [100, 100]
  end

  devise :database_authenticatable,
         :registerable,
         :recoverable, 
         :rememberable, 
         :validatable,
         :confirmable, 
         :omniauthable, omniauth_providers: [:google_oauth2]

  before_create :capitalize

  validates :name, presence: true, length: { maximum: 350 }
  validates :birth_date, presence: true
  validates :gender, presence: true

  validates :nickname, presence: true, uniqueness: true

  def capitalize
    name.capitalize!
  end

  def self.create_from_provider_data(provider_data)
    # Достаём email из токена
    email = provider_data.info.email
    user = where(email: email).first

    # Возвращаем, если нашёлся
    return user if user.present?

    # Если не нашёлся, достаём провайдера, айдишник и uid
    provider = provider_data.provider
    id = provider_data.extra.raw_info.id
    uid = id

    # Теперь ищем в базе запись по провайдеру и uid
    # Если есть, то вернётся, если нет, то будет создана новая
    where(uid: uid, provider: provider).first_or_create! do |user|
      # Если создаём новую запись, прописываем email и пароль
      user.name = provider_data.info.name
      user.nickname = "Ордынский Вепрь_#{rand(999)}"
      user.birth_date = Time.now
      user.gender = provider_data.info.gender

      user.avatar.attach(io: URI.open(provider_data.info.image), filename: 'avatar')
      
      user.email = email
      user.password = Devise.friendly_token.first(16)
      user.confirmed_at = Time.now.utc
    end
  end
end
