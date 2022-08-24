class Song < ApplicationRecord
  belongs_to :user

  # before_create :user_id

  validates :title, presence: true
  validates :body, presence: true
  validates :author, presence: true, uniqueness: true

  # def user_id
  #   self.new(user: current_user)

  #   debugger
  # end
end
