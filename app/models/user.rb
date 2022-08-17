class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable,
        :confirmable

  before_create :capitalize

  validates :name, presence: true
  validates :surname, presence: true
  validates :age, presence: true

  validates :nickname, presence: true, uniqueness: true

  def capitalize
    name.capitalize!
    surname.capitalize!
  end
end
