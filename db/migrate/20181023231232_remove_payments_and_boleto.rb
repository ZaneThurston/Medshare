class RemovePaymentsAndBoleto < ActiveRecord::Migration[5.0]
  def change
  	remove_column :users, :boleto
  	drop_table :payments
  end
end
