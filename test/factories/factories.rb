FactoryGirl.define do

  factory :user do
    email 'user@example.com'
    password 'secret'
    salt 'asdasdastr4325234324sdfds'
    crypted_password Sorcery::CryptoProviders::BCrypt.encrypt('secret', 'asdasdastr4325234324sdfds')
    user_level 0

    factory :admin do
      email 'admin@example.com'
      user_level 1
    end

    trait :with_post do
      after :create do |user|
        FactoryGirl.create :post, user: user
      end
    end

  end

  factory :post do
    title 'Some Title'
    body 'Some Body'
  end

end