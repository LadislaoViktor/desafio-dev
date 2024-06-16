# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

TransactionType.create!(type:1, description: 'Débito', operation_type: TrueClass, operation_sign: TrueClass)
TransactionType.create!(type:2, description: 'Boleto', operation_type: FalseClass, operation_sign: FalseClass)
TransactionType.create!(type:3, description: 'Financiamento', operation_type: FalseClass, operation_sign: FalseClass)
TransactionType.create!(type:4, description: 'Crédito', operation_type: TrueClass, operation_sign: TrueClass)
TransactionType.create!(type:5, description: 'Recebimento empréstimo', operation_type: TrueClass, operation_sign: TrueClass)
TransactionType.create!(type:6, description: 'Vendas', operation_type: TrueClass, operation_sign: TrueClass)
TransactionType.create!(type:7, description: 'Recebimento TED', operation_type: TrueClass, operation_sign: TrueClass)
TransactionType.create!(type:8, description: 'Recebimento DOC', operation_type: TrueClass, operation_sign: TrueClass)
TransactionType.create!(type:9, description: 'Aluguel', operation_type: FalseClass, operation_sign: FalseClass)
