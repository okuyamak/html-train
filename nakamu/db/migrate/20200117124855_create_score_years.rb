class CreateScoreYears < ActiveRecord::Migration[5.2]
  def change
    create_table :score_years do |t|
      t.integer :user_id
      t.integer :y2019_10
      t.integer :y2019_20
      t.integer :y2019_30
      t.integer :y2019_40
      t.integer :y2019_50
      t.integer :y2019_all
      t.timestamps
    end
  end
end
