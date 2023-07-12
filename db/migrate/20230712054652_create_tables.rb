class CreateTables < ActiveRecord::Migration[7.0]
  def change
    create_table :tables do |t|
      t.string :name
      t.integer :points
      t.string :logo
      t.integer :league_id

      t.timestamps
    end
  end
end
