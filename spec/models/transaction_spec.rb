require 'rails_helper'

RSpec.describe Transaction, type: :model do
  context 'Transaction' do
    before(:each) do
      @store = FactoryBot.create(:store)
      @transaction_type = FactoryBot.create(:transaction_type)
    end

    it 'expects empty object to raise error' do
      expect{ Transaction.create! }.to raise_error(ActiveRecord::RecordInvalid)
      expect{ Transaction.create!.errors }.to raise_error("Validation failed: Store must exist, Transaction type must exist, Date can't be blank, Time can't be blank, Value can't be blank, Card number can't be blank, Cpf can't be blank")
    end

    it 'expects valid object to create transaction successfully' do
      transaction = Transaction.create!(date: Date.new(),
      time: Time.new(),
      value: @transaction_type.operation_sign ? (1254.to_f / 100).round(2): -(1254.to_f / 100.00),
      card_number:"123412341234",
      cpf: '1324567900',
      transaction_type_id: @transaction_type.id ,
      store_id: @store.id)

      expect(transaction).to be_valid
    end
  end
end
