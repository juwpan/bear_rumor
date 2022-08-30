class Song < ApplicationRecord
  belongs_to :user
  has_many :author_uniqs
  has_many :authors, through: :author_uniqs

  before_create :author_songs

  validates :title, presence: true
  validates :body, presence: true
  validates :name_author, presence: true

  def author_songs
    authors = Author.find_or_create_by!(name: self.name_author)
    self.authors << authors
  end
end
