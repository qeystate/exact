require 'factory_bot'

FactoryBot.define do
  factory :client, class: Exact::Client do
    access_token {"abc123"}
    division     {"456"}
    service      {"tst"}
    endpoint     {"Test"}

    initialize_with { new(attributes) }
  end
end
