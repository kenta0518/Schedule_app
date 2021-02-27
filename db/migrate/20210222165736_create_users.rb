class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.text :title
      t.date :start
      t.date :end
      t.boolean :allday
      t.string :check
      t.string :edited
      t.string :erase

      t.timestamps
    end
  end
end
