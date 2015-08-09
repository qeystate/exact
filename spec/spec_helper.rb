$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'exact'
require 'vcr'
require 'factory_girl'

FactoryGirl.find_definitions

VCR.configure do |c|
  c.hook_into :faraday
  c.cassette_library_dir = 'spec/vcr'
  c.default_cassette_options = { record: :new_episodes }
end

RSpec.configure do |config|
  config.before(:suite) { Exact.configure }
  config.include FactoryGirl::Syntax::Methods
end
