class Def < ActiveRecord::Migration[5.2]
  def change
    remove_column :score_years, :y2019_all, :integer
    add_column :score_years, :y2019_all, :integer, default: 0
  end
end
