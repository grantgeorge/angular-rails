FactoryGirl.define do
  factory :widget do
    name { Faker::App.name }
    description { Faker::Hacker.say_something_smart }
    ready_on true

    factory :invalid_widget do
      name nil
    end
  end
end
