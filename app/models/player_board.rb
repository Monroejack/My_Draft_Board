class PlayerBoard < ApplicationRecord
  belongs_to :player
  belongs_to :board

  acts_as_list scope: :board

  def first_name
  
  end

  def last_name

  end

  def position

  end

  def school

  end
end
