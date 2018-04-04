class PlayerBoard < ApplicationRecord
  belongs_to :player
  belongs_to :board

  acts_as_list scope: :board

end
