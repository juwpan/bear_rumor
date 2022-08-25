FactoryBot.define do
  factory :song do
    body { "body_#{rand(999)}" }
    title { "accord_#{rand(999)}" }

    sequence(:author) { |n| "author_#{n}" }
  end
end
