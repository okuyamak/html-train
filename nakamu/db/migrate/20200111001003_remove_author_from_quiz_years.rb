class RemoveAuthorFromQuizYears < ActiveRecord::Migration[5.2]
  def change
    remove_column :quiz_years, :name, :istring
  end
end
