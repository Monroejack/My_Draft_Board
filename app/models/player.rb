class Player < ApplicationRecord
  has_many :player_boards
  has_many :boards, through: :player_boards
  acts_as_list scope: :board
  @player = Player.all

end
