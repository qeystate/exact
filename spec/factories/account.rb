FactoryGirl.define do
  factory :account, class: Exact::Account do
    Name 'test'

    initialize_with { new(attributes) }
  end
end
