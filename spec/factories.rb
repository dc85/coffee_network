FactoryGirl.define do
  factory :user do
    name     "Michael Hartl"
    email    "michael@example.com"
    company  "Starbucks"
    jobtitle "Manager"
    password "foobar"
    password_confirmation "foobar"
  end
end