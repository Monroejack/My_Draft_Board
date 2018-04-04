class CreatePlayerBoards < ActiveRecord::Migration[5.1]
  def change
    create_table :player_boards do |t|
      t.integer :player_id
      t.integer :board_id

      t.timestamps
    end
  end
end
