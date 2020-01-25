FactoryBot.define do
  factory :item, class: 'Item' do
    sequence(:title, 1) do |n|
      "item#{n}"
    end
  end
end
