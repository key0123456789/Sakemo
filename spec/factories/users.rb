FactoryBot.define do

  factory :user do
    nickname              {"test"}
    email                 {"test@gmail.com"}
    password              {"00000000"}
    password_confirmation {"00000000"}
  end

    # after(:create) do |user|
    #   create_list(:brewage, 3, user: user)
    # end

    # after(:create) do |user|
    #   create_list(:clip, 3, user: user)
    # end

    # after(:create) do |user|
    #   create_list(:brand, 3, user: user)
    # end

    # after(:create) do |user|
    #   create_list(:clip, 3, user: user)
    # end

    # after(:create) do |user|
    #   create_list(:feeling, 3, user: user)
    # end


end