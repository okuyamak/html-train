class AddNameToQuizYears < ActiveRecord::Migration[5.2]
  def change
    add_column :quiz_years, :name, :string
  end
end
