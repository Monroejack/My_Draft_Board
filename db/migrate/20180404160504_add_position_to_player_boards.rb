class AddPositionToPlayerBoards < ActiveRecord::Migration[5.1]
  def change
    add_column :player_boards, :position, :integer
  end
end
