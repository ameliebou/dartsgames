require 'securerandom'

class Game < ApplicationRecord
  has_one :winner
  has_many :players
  has_many :scores, through: :players
  has_many :won_sets
  has_many :won_legs
  before_create :set_password

  validates :game_type, presence: true

  def win_leg(player)
    WonLeg.create(player: player, game: self)
    Score.destroy_all
    if player.won_legs.count == legs && sets.nil?
      create_winner(player)
    elsif player.won_legs == legs
      win_set(player)
    end
  end

  private

  def self.game_types
    [101, 301, 501, 701, 1001]
  end

  def set_password
    self.password = SecureRandom.hex(4)
  end

  def win_set(player)
    WonSet.create(player: player, game: self)
    create_winner(player) if player.won_sets == sets
  end

  def create_winner(player)
    Winner.create(player: player, game: self)
  end
end
