class ScoreYears < ActiveRecord::Migration[5.2]
  def change
    add_column :score_years, :user_id, :integer
  end
end
