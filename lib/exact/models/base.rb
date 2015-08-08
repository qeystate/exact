require 'virtus'
require 'active_model'

module Exact
  class Base
    attr_accessor :client

    def guid
      send(self.class.exact_guid_attribute)
    end

    def self.exact_guid_attribute
      Object.const_get("#{name}::EXACT_GUID")
    end

    def exact_guid_attribute
      self.class.exact_guid_attribute
    end

    def self.exact_service
      Object.const_get("#{self}::EXACT_SERVICE")
    end

    def exact_service
      self.class.exact_service
    end

    def self.exact_endpoint
      to_s.demodulize.pluralize.camelize
    end

    def exact_endpoint
      self.class.exact_endpoint
    end

    def self.create_client(access_token:, division:)
      Exact::Client.new(access_token: access_token, division: division, service: exact_service, endpoint: exact_endpoint)
    end

    def create_client(access_token:, division:)
      @client ||= self.class.create_client(access_token: access_token, division: division)
    end

    def self.all(client:)
      client.send(to_s.demodulize.pluralize)
      result = client.execute
      result.map! { |obj| Exact.const_get("#{to_s.demodulize}Mapping").convert obj }
    end

    def self.create(attributes: {}, client:)
      exact_obj = Exactonline.const_get(to_s.demodulize).new(attributes)
      client.send("AddTo#{to_s.demodulize.pluralize}", exact_obj)
      result = client.save_changes
      result.map! { |obj| Exact.const_get("#{to_s.demodulize}Mapping").convert obj }
      result.first
    end

    def self.find(id:, client:)
      client.send(exact_endpoint).filter("#{exact_guid_attribute} eq guid'#{id}'")
      result = client.execute
      result.map! { |obj| Exact.const_get("#{to_s.demodulize}Mapping").convert obj }
      result.first
    end

    def self.find_by(field:, value:, guid: false, client:)
      query = "#{field.capitalize} eq "
      query << 'guid' if guid
      query << "'#{value}'"
      client.send(exact_endpoint).filter(query)
      result = client.execute
      result.map! { |obj| Exact.const_get("#{to_s.demodulize}Mapping").convert obj }
      result.first
    end

    def self.update(id:, attributes: {}, client:)
      client.send(exact_endpoint).filter("#{exact_guid_attribute} eq guid'#{id}'")
      result = client.execute
      return false unless result.any?
      exact_obj = result.first
      attributes.each do |attribute, value|
        exact_obj.send("#{attribute}=", value) if exact_obj.respond_to? (attribute)
      end
      client.update_object(exact_obj)
      result = client.save_changes
      true
    end

    def update(client:)
      client.send(exact_endpoint).filter("#{exact_guid_attribute} eq guid'#{guid}'")
      result = client.execute
      return false unless result.any?
      exact_obj = result.first
      attributes.each do |attribute, value|
        exact_obj.send("#{attribute}=", value) if exact_obj.respond_to? (attribute)
      end
      client.update_object(exact_obj)
      result = client.save_changes
      true
    end

    def save(client:)
      if guid.present?
        update(client: client)
      else
        result = self.class.create(attributes: attributes, client: client) unless guid.present?
        self.attributes = result.attributes
        self
      end
    end

    def self.destroy(id: nil, client:)
      client.send(exact_endpoint).filter("#{exact_guid_attribute} eq guid'#{id}'")
      result = client.execute
      return false unless result.any?
      client.delete_object(result.first)
      result = client.save_changes
      true
    rescue OData::ServiceError => e
      errors.add(:base, e.message)
      false
    end

    def destroy(client:)
      client.send(self.class.exact_endpoint).filter("#{self.class.exact_guid_attribute} eq guid'#{guid}'")
      result = client.execute
      return false unless result.any?
      client.delete_object(result.first)
      result = client.save_changes
      true
    rescue OData::ServiceError => e
      errors.add(:base, e.message)
      false
    end
  end
end
