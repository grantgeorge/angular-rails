FactoryGirl.define do
  factory :widget do
    name { Faker::App.name }
    description { Faker::Hacker.say_something_smart }
    ready_on true
  end

  factory :invalid_widget, class: Widget do
    name nil
  end

end
