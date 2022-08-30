class AuthorUniq < ApplicationRecord
  belongs_to :author
  belongs_to :song
end
