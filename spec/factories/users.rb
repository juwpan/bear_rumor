FactoryBot.define do
  factory :user do
    name { "мишка_#{rand(999)}" }
    surname { "глухой_#{rand(999)}" }
    age { rand(100) }
    gender { ["м","ж"].sample }
    avatar { "#picture_#{rand(999)}" }

    sequence(:email) { |n| "juwpan_#{n}@gmail.com" }
    sequence(:nickname) { |n| "rumor_#{n}" }

    # is_admin { false }

    after(:build) { |u| u.password_confirmation = u.password = "123456"}
  end
end
