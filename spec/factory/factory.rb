Factory.define do

  factory :user do
    name "Andy"
  end
  factory :comment do
    item_id 100
    content "nothing"
    association :item, :comment => :item
  end
  factory :item do
    name "New item"
    description "Good Coffee"
  end
end