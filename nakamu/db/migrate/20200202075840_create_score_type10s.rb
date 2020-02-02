class CreateScoreType10s < ActiveRecord::Migration[5.2]
  def change
    create_table :score_type10s do |t|

      t.integer :user_id
      t.timestamps
    end
  end
end
