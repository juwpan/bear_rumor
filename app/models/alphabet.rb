class Alphabet < ApplicationRecord
  has_many :alphabet_uniqs, dependent: :destroy
  has_many :authors, through: :alphabet_uniqs

  validates :abc, presence: true
end
