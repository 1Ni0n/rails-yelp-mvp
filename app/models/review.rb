class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, :numericality => {:only_integer => true}
  validates_format_of :rating, with: /\A[0-5]\z/
end
