class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :phone, :string
    add_column :users, :username, :string
    add_column :users, :address, :text
    add_column :users, :number, :integer
  end
end
