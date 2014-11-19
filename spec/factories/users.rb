FactoryGirl.define do
  factory :users do
    username { Faker::Internet.user_name }
    password { Faker::Internet.password }

    factory :invalid_contact_username do
      username nil
    end

    factory :invalid_contact_password do
      password nil
    end
  end
end
