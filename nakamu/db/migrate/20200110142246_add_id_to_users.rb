class AddIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_id, :integer
    add_column :users, :user_name, :string
  end
end
