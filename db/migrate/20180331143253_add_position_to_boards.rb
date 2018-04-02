class AddPositionToBoards < ActiveRecord::Migration[5.1]
  def change
    add_column :boards, :position, :integer
  end
end
