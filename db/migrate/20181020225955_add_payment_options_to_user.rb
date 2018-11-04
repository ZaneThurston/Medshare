class AddPaymentOptionsToUser < ActiveRecord::Migration[5.0]
  def change
  	 add_column :users, :conta, :string
     add_column :users, :dinheiro, :boolean
  end
  add_index :payments, :payment_id
end