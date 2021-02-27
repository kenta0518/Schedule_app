class RemoveEraseFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :erase, :string
  end
end
