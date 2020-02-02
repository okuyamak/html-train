class CreateScoreType15s < ActiveRecord::Migration[5.2]
  def change
    create_table :score_type15s do |t|

      t.integer :user_id
      t.timestamps
    end
  end
end
