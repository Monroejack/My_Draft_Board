class Player < ApplicationRecord
  has_many :player_boards
  has_many :boards, through: :player_boards

  @player = Player.all

end
