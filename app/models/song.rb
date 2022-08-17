class Song < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :author, presence: true, uniqueness: true
  validates :body, presence: true
end
