class Song < ApplicationRecord
  include PgSearch::Model

  belongs_to :user
  has_many :author_uniqs
  has_many :authors, through: :author_uniqs

  before_create :author_songs

  validates :title, presence: true
  validates :body, presence: true
  validates :name_author, presence: true

  pg_search_scope :search_everywhere, against: [:title, :name_author]

  def author_songs
    authors = Author.find_or_create_by!(name: self.name_author)
    self.authors << authors
  end
end
