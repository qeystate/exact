require 'virtus'
require 'active_model'

module Exact
  class Base
    attr_accessor :client

    alias read_attribute_for_serialization send

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

    def self.obsolete_instance_variables
      Object.const_get("#{self}::OBSOLETE_INSTANCE_VARIABLES")
    end

    def obsolete_instance_variables
      self.class.obsolete_instance_variables
    end

    def self.exact_endpoint
      name = Object.const_get("#{self}::EXACT_ENDPOINT") rescue nil
      name = to_s.demodulize.pluralize.camelize unless name
      name
    end

    def exact_endpoint
      self.class.exact_endpoint
    end

    def self.create_client(access_token:, division:)
      Exact::Client.new(access_token: access_token, division: division, service: exact_service, endpoint: exact_endpoint)
    end

    def setup_client(access_token: nil, division: nil, reload: false)
      return @client if @client.present? && !reload
      return @client = self.class.create_client(access_token: access_token, division: division) if @client.nil? || reload
      self
    end

    def self.all(client:)
      client.send(to_s.demodulize.pluralize)
      result = client.execute
      result.map! { |obj| Exact.const_get("#{to_s.demodulize}Mapping").convert obj }
    end

    def self.create(attributes: {}, client:)
      exact_obj = Exactonline.const_get(exact_endpoint.singularize).new(attributes)
      client.send("AddTo#{exact_endpoint}", exact_obj)
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
      query = "#{field} eq "
      if guid
        query << "guid'#{value}'"
      else
        query << "#{value}"
      end
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
        exact_obj.send("#{attribute}=", value) if exact_obj.respond_to? attribute
      end

      exact_obj = self.remove_obsolete_instance_variables exact_obj

      client.update_object(exact_obj)
      client.save_changes
      true
    end

    def update(client:)
      return false if guid.blank?
      client.send(exact_endpoint).filter("#{exact_guid_attribute} eq guid'#{guid}'")
      result = client.execute
      return false unless result.any?
      exact_obj = result.first
      attributes.each do |attribute, value|
        exact_obj.send("#{attribute}=", value) if exact_obj.respond_to? attribute
      end

      exact_obj = self.class.remove_obsolete_instance_variables exact_obj

      client.update_object(exact_obj)
      client.save_changes
      true
    end

    def save(client:)
      if !guid.blank?
        update(client: client)
      else
        self.attributes = self.class.create(attributes: attributes, client: client).attributes
        self
      end
    end

    def self.destroy(id: nil, client:)
      client.send(exact_endpoint).filter("#{exact_guid_attribute} eq guid'#{id}'")
      result = client.execute
      return false unless result.any?
      client.delete_object(result.first)
      client.save_changes
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
      client.save_changes
      true
    rescue OData::ServiceError => e
      errors.add(:base, e.message)
      false
    end

    def self.remove_obsolete_instance_variables exact_obj
      obsolete_instance_variables.each do |obsolete_instance_variable_name|
        exact_obj.remove_instance_variable "@#{obsolete_instance_variable_name}"
      end
      return exact_obj
    end
  end
end
