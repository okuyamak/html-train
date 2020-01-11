class CreateQuizYears < ActiveRecord::Migration[5.2]
  def change
    create_table :quiz_years do |t|
      t.integer :r01_10
      t.integer :r01_20

      t.timestamps
    end
  end
end
