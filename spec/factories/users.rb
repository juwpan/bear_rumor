FactoryBot.define do
  factory :user do
    name { "мишка_#{rand(999)}" }
    birth_date { "15.07.2001" }
    gender { "м" }
    confirmed_at { Time.now }

    sequence(:id) { |n| "#{n + 1}"}
    sequence(:email) { |n| "juwpan_15@gmail.com" }
    sequence(:nickname) { |n| "rumor_#{n}" }

    after(:build) { |u| u.password_confirmation = u.password = "1"}
  end
end
