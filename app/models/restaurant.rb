class Restaurant < ApplicationRecord
  has_many :reviews
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates_exclusion_of :category, :in => %w(neptunian)
end
