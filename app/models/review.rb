class Review < ApplicationRecord
  belongs_to :movie
  validates :user, :presence => true
  validates :stars, :presence => true
  validates :analysis, :presence => true
end
