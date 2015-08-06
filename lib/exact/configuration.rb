module Exact
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration) if block_given?
  end

  class Configuration
    attr_accessor :exact_url

    def initialize
      @exact_url = 'https://start.exactonline.nl/api/v1'
    end
  end
end
