class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :title
      t.text :description
      t.string :price
      t.string :condition
      t.string :location

      t.timestamps
    end
  end
end
