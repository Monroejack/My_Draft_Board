class PlayerBoard < ApplicationRecord
  belongs_to :board
  belongs_to :player
end