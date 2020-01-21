FactoryBot.define do

  factory :feeling do
    association :user
    association :brand
    comment { 'コメントです' }
    flavor { 1 }
    aroma { 1 }
    body { 1 }
    sharp { 1 }
    favolite { 1 }
  end

end