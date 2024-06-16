FactoryBot.define do
  factory :transaction_type do
    type { 1 }
    description { "MyString" }
    operation_nature { false }
    operation_sign { false }
  end
end
