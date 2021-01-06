class Score < ApplicationRecord
  belongs_to :player
  has_one :game, through: :player

  validates :score, presence: true
end
