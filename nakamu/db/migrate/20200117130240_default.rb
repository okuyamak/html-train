class Default < ActiveRecord::Migration[5.2]
  def change
    remove_column :score_years, :y2019_10, :integer
    remove_column :score_years, :y2019_20, :integer
    remove_column :score_years, :y2019_30, :integer
    remove_column :score_years, :y2019_40, :integer
    remove_column :score_years, :y2019_50, :integer
    add_column :score_years, :y2019_10, :integer, default: 0
    add_column :score_years, :y2019_20, :integer, default: 0
    add_column :score_years, :y2019_30, :integer, default: 0
    add_column :score_years, :y2019_40, :integer, default: 0
    add_column :score_years, :y2019_50, :integer, default: 0
  end
end
