class CreateTransactionTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :transaction_types do |t|
      t.integer :code
      t.string :description
      t.boolean :operation_nature
      t.boolean :operation_sign

      t.timestamps
    end
  end
end
