class Transaction < ApplicationRecord
  belongs_to :store
  belongs_to :transaction_type

  validates :date, :time, :value, :card_number, :cpf, presence: true

  def self.parse_file(file)
    file&.readlines.each do |line|
      save_transaction(line)
    end
  rescue StandardError => e
    p e.class
    p e.to_s
    p e.backtrace
  end

  def self.save_transaction(line)
    ActiveRecord::Base.transaction do
      transaction_type = TransactionType.find_by(code:line[0].to_i)

      store_id = Store.where(name:line[62..80].chomp,owners_name:line[48..61].chomp).first_or_create.id

      Transaction.new(
      date: Date.new(line[1..4].to_i,line[5..6].to_i,line[7..8].to_i),
      time: Time.new(0000,01,01,line[42..43].to_i,line[44..45].to_i,line[46..47].to_i),
      value: transaction_type.operation_sign ? (line[9..18].to_f / 100).round(2): -(line[9..18].to_f / 100.00),
      card_number: line[30..41],
      cpf: line[19..29],
      transaction_type_id: transaction_type.id ,
      store_id: store_id
      ).save!
    end
  end

  def transaction_by_store(store_id)
    Transaction.where(store_id:store_id).sum(value)
  end
end
