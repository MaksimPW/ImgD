FactoryGirl.define do
  factory :user do
    email    "maksim@example.com"
    password "simple_password"
    password_confirmation "simple_password"
  end
end