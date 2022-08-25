class User < ApplicationRecord
  has_many :songs, dependent: :destroy

  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable,
        :confirmable

  before_create :capitalize

  mount_uploader :avatar, AvatarUploader
  
  validates :name, presence: true, length: { maximum: 350 }
  validates :birth_date, presence: true
  validates :gender, presence: true

  validates :nickname, presence: true, uniqueness: true


  def capitalize
    name.capitalize!
  end
end
