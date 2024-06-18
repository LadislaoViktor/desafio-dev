FactoryBot.define do
  factory :transaction do
    date { "2024-06-16" }
    time { "2024-06-16 18:05:45" }
    value { "9.99" }
    card_number { "MyString" }
    cpf { "MyString" }
  end
end
