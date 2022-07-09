class Movie < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :overview, presence: true
end
