class Board < ApplicationRecord
  belongs_to :user, optional: true
  has_many :player_boards
  has_many :players, through: :player_boards
  # -> {:order (position: :asc)}
end
