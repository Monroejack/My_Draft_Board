class Board < ApplicationRecord
  belongs_to :user
  has_many :player_boards, -> { order(position: :asc) }
  has_many :players, through: :player_boards
  # -> { order(position: :asc) }

end
