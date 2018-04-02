class AddPlayerToBoards < ActiveRecord::Migration[5.1]
  def change
    add_column :boards, :player, :string
  end
end
