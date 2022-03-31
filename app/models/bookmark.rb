class Bookmark < ApplicationRecord
  has_one_attached :photo
  validates :photo, presence: true
  belongs_to :movie
  belongs_to :list
  validates :comment, presence: true, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id }
end
