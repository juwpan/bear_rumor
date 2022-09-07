class Author < ApplicationRecord
  has_many :author_uniqs
  has_many :songs, through: :author_uniqs

  has_many :alphabet_uniqs, dependent: :destroy
  has_many :alphabets, through: :alphabet_uniqs

  before_save :save_array_alphabets

  validates :name, presence: true
  validates :letter, presence: true

  def save_array_alphabets
    alphabets = Alphabet.find_or_create_by!(abc: self.letter)

    self.alphabets << alphabets
  end
end
