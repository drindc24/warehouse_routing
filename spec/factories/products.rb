FactoryBot.define do
  factory :product do
    sequence(:name){ |n| "product_#{n}" }
    association :category
    association :reference
  end
end