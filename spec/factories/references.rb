FactoryBot.define do
  factory :reference do
    ref_code { SecureRandom.hex }
    association :destination
  end
end