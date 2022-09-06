class User < ApplicationRecord
  has_many :songs, dependent: :destroy
  
  has_one_attached :avatar do |attachable|
    attachable.variant :thumb, resize_to_fill: [100, 100]
  end

  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable,
        :confirmable

  before_create :capitalize
  
  validates :name, presence: true, length: { maximum: 350 }
  validates :birth_date, presence: true
  validates :gender, presence: true

  validates :nickname, presence: true, uniqueness: true

  def capitalize
    name.capitalize!
  end
end
