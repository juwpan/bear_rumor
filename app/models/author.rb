class Author < ApplicationRecord
  has_many :author_uniqs, dependent: :delete_all
  has_many :songs, through: :author_uniqs, dependent: :delete_all

  validates :name, presence: true
end
