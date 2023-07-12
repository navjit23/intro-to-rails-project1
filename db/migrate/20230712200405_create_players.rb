class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :age
      t.string :photo
      t.string :nationality
      t.integer :table_id
      t.timestamps
    end
  end
end
