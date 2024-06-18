FactoryBot.define do
  factory :transaction_type do
    code { 1 }
    description { "Debito" }
    operation_nature { true }
    operation_sign { true }
  end
end
