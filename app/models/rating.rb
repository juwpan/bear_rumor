class Rating < ApplicationRecord
  belongs_to :song
  belongs_to :user
  
  validates :grade, presence: true
end
