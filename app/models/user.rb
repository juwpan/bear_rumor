class User < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_many :ratings, dependent: :destroy

  has_one_attached :avatar do |attachable|
    attachable.variant :thumb, resize_to_fill: [100, 100]
  end

  devise :database_authenticatable,
        :registerable,
        :recoverable, 
        :rememberable, 
        :validatable,
        :confirmable, 
        :omniauthable, omniauth_providers: [:google_oauth2, :mail_ru]

  before_create :capitalize
  before_create :gender_choice

  validates :name, presence: true, length: { maximum: 350 }
  validates :birth_date, presence: true
  validates :gender, presence: true

  validates :nickname, presence: true, uniqueness: true

  def capitalize
    name.capitalize!
  end

  def gender_choice
    self.gender = "не указан" if self.gender == "не важно"
  end

  def self.create_from_provider_data(provider_data)
    email = provider_data.info.email

    user = where(email: email).first

    return user if user.present?

    provider = provider_data.provider

    id = provider_data.extra.raw_info.id
    
    uid = id

    where(uid: uid, provider: provider).create! do |user|
      user.name = provider_data.info.name
      user.nickname = "Ордынский Вепрь_#{rand(999)}"

      if provider_data.info.birth_date.present?
        user.birth_date =  provider_data.info.birth_date
      else
        user.birth_date = Time.now
      end

      user.gender = "не указан"

      user.avatar.attach(io: URI.open(provider_data.info.image), filename: 'avatar')
      
      user.email = email

      user.password = Devise.friendly_token.first(16)
      user.confirmed_at = Time.now.utc
    end
  end
end
