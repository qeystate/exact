require 'ruby_odata'

module Exact
  class Client
    attr_reader :exact_url, :exact_client
    attr_accessor :access_token, :division, :service, :endpoint

    def initialize(access_token:, division:, service:, endpoint:)
      @access_token = access_token
      @division     = division
      @service      = service
      @endpoint     = endpoint
      @rest_options = { token_type: 'bearer' }
      @exact_url    = "#{Exact.configuration.exact_url}/#{division}/#{service}"
      @exact_client = OData::Service.new(@exact_url, access_token: access_token, namespace: 'Exactonline', rest_options: @rest_options)
      @exact_client.send(endpoint)
    end

    def method_missing(mthd, *args, &block)
      exact_client.send(mthd, *args, &block) if exact_client.respond_to? mthd.to_s
    end
  end
end
