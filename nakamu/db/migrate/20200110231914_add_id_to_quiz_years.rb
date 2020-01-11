class AddIdToQuizYears < ActiveRecord::Migration[5.2]
  def change
    add_column :quiz_years, :user_id, :integer
  end
end
