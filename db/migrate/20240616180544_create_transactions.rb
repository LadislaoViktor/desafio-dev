class CreateTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :transactions do |t|
      t.date :date
      t.time :time
      t.decimal :value
      t.string :card_number
      t.string :cpf

      t.timestamps
    end
  end
end
