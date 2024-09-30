class Bookmark < ApplicationRecord
  validates :recipe, uniqueness: { scope: :category }
  validates :comment, length: { minimum: 6 }

  belongs_to :recipe
  belongs_to :category
end
