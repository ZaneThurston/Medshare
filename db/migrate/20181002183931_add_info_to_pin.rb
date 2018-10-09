class AddInfoToPin < ActiveRecord::Migration[5.0]
  def change
    add_column :pins, :price, :integer
    add_column :pins, :condition, :string
    add_column :pins, :location, :string
  end
end
