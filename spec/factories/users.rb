FactoryBot.define do
  factory :user do
    name { "мишка_#{rand(999)}" }
    birth_date { "15.07.2001" }
    gender {"#{["м", "ж"].sample}"}

    sequence(:email) { |n| "juwpan_#{n}@gmail.com" }
    sequence(:nickname) { |n| "rumor_#{n}" }

    # is_admin { false }

    after(:build) { |u| u.password_confirmation = u.password = "1"}
  end
end
