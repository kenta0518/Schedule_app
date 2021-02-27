class RemoveCheckFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :check, :string
  end
end
