class AddColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :quiz_years, :r01_10, :integer
    remove_column :quiz_years, :r01_20, :integer
    add_column :quiz_years, :y2019_10, :integer
    add_column :quiz_years, :y2019_20, :integer
    add_column :quiz_years, :y2019_30, :integer
    add_column :quiz_years, :y2019_40, :integer
    add_column :quiz_years, :y2019_50, :integer
  end
end
