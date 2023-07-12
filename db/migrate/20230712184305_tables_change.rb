class TablesChange < ActiveRecord::Migration[7.0]
  def change
    add_column :tables, :founded, :integer
    remove_column :tables, :points, :integer
  end
end
