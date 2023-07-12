class CreateFixtures < ActiveRecord::Migration[7.0]
  def change
    create_table :fixtures do |t|
      t.date :match_date
      t.time :match_time
      t.integer :table_id
      t.integer :league_id
      t.string :opponent

      t.timestamps
    end
  end
end
