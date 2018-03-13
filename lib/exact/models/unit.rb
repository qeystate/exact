module Exact
  class Unit < Base
    include ActiveModel::Model
    include Virtus.model

    EXACT_SERVICE = 'logistics'
    EXACT_GUID    = 'ID'
    OBSOLETE_INSTANCE_VARIABLES = []

    attribute :ID,                             String
    attribute :Active,                         Boolean
    attribute :Code,                           String
    attribute :Description,                    String
    attribute :Division,                       Integer
    attribute :Main,                           String
    attribute :TimeUnit,                       String
    attribute :Type,                           String
  end
end
