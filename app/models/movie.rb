class Movie < ApplicationRecord
  has_many :reviews

  scope :five_most_recent, -> { order(created_at: :desc).limit(5)}

  validates :title, :presence => true
  validates :genre, :presence => true
  validates :rating, :presence => true
  validates :synopsis, :presence => true
end
