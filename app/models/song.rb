class Song < ApplicationRecord
  include PgSearch::Model

  belongs_to :user
  has_many :ratings, dependent: :destroy

  has_many :author_uniqs, dependent: :destroy
  has_many :authors, through: :author_uniqs

  before_create :save_array_authors


  validates :title, presence: true
  validates :body, presence: true
  validates :name_author, presence: true

  pg_search_scope :search_everywhere, against: [:title, :name_author]

  def save_array_authors
    authors = Author.find_or_create_by!(name: self.name_author, letter: self.name_author[0])

    self.authors << authors
  end
end
