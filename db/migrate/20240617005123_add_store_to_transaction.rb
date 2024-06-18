class AddStoreToTransaction < ActiveRecord::Migration[7.1]
  def change
    add_reference :transactions, :store, foreign_key: true
  end
end
