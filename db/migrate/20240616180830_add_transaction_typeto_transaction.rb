class AddTransactionTypetoTransaction < ActiveRecord::Migration[7.1]
  def change
    add_reference :transactions, :transaction_type, foreign_key: true
  end
end
