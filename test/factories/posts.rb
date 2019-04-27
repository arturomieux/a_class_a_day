FactoryBot.define do
  factory :post do
    title { Faker::Lorem.sentence(4,true,4) }
    short_description { Faker::Lorem.paragraph_by_chars(600, true) }
    content { Faker::Lorem.paragraph_by_chars(3000, true) }

    factory :post_without_short_description do
      short_description { nil }
    end

    factory :post_without_title do
      title { nil }
    end

    factory :post_without_content do
      content { nil }
    end
  end
end