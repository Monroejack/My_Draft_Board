class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :school
      t.string :position
      t.integer :cbs_projection
      t.integer :nfl_projection
      t.integer :drafttek_projection
      t.decimal :composite_rating
      t.integer :year

      t.timestamps
    end
  end
end
