require 'securerandom'

class Game < ApplicationRecord
  has_many :players
  before_create :set_password

  validates :game_type, presence: true

  private

  def self.game_types
    [101, 301, 501, 701, 1001]
  end

  def set_password
    self.password = SecureRandom.hex(4)
  end
end
