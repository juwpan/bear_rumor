FactoryBot.define do
  factory :user do
    name { "Мишка_#{rand(999)}"}
    surname { "Кудлатый_#{rand(999)}"}
    age { rand(100) }
    gender { ["м","ж"].sample }
    avatar { "#picture_#{rand(999)}" }

    sequence(:email) { |n| "juwpan_#{n}@gmail.com" }

    is_admin { false }

    after(:build) { |u| u.password_confirmation = u.password = "1"}
  end
end
