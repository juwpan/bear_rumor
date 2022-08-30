FactoryBot.define do
  factory :song do
    body { "Сдесь должна быть ваша песня с аккордами_#{rand(999)}" }
    title { "Название песенки что добавил пользователь_#{rand(999)}" }

    sequence(:name_author) { |n| "Дуда Мара Тотем спирит_#{n}" }
  end
end
