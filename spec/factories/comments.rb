# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    text "My comment"
    association :commenter, factory: :user
    association :post, factory: :user
  end
end
