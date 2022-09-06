class AuthorUniq < ApplicationRecord
  belongs_to :song
  belongs_to :author
end
