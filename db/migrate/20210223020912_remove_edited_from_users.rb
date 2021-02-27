class RemoveEditedFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :edited, :string
  end
end
