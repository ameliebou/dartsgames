class Player < ApplicationRecord
  belongs_to :game
  has_many :scores

  has_many :won_sets
  has_many :won_legs

  validates :name, presence: true
end
