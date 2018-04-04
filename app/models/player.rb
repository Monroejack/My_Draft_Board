class Player < ApplicationRecord
  has_many :player_boards# , inverse_of: :player
  has_many :boards, through: :player_boards

end
