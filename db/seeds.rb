# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

TransactionType.create!(code:1, description: 'Débito', operation_nature: true, operation_sign: true)
TransactionType.create!(code:2, description: 'Boleto', operation_nature: false, operation_sign: false)
TransactionType.create!(code:3, description: 'Financiamento', operation_nature: false, operation_sign: false)
TransactionType.create!(code:4, description: 'Crédito', operation_nature: true, operation_sign: true)
TransactionType.create!(code:5, description: 'Recebimento empréstimo', operation_nature: true, operation_sign: true)
TransactionType.create!(code:6, description: 'Vendas', operation_nature: true, operation_sign: true)
TransactionType.create!(code:7, description: 'Recebimento TED', operation_nature: true, operation_sign: true)
TransactionType.create!(code:8, description: 'Recebimento DOC', operation_nature: true, operation_sign: true)
TransactionType.create!(code:9, description: 'Aluguel', operation_nature: false, operation_sign: false)
