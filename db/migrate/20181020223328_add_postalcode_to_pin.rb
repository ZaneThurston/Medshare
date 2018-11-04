class AddPostalcodeToPin < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :postalCode, :string
  	change_column :users, :address, :string
  end
end
