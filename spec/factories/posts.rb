# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    title "My post title"
    description "My post description"
    association :owner, factory: :user
  end

  factory :post_with_comments, class: Post do
    title "My post title"
    description "My post description"
    association :owner, factory: :user

    ignore do
      comments_count 5
    end

    after(:create) do |post, evaluator|
      create_list(:comment, evaluator.comments_count, post: post)
    end
  end
end
