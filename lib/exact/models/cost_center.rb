module Exact
  class CostCenter < Base
    include ActiveModel::Model
    include Virtus.model

    EXACT_SERVICE  = 'hrm'
    EXACT_GUID     = 'ID'
    EXACT_ENDPOINT = 'Costcenters'
    OBSOLETE_INSTANCE_VARIABLES = []

    attribute :Active,           Boolean
    attribute :Code,             String
    attribute :Created,          DateTime
    attribute :Creator,          String # guid
    attribute :CreatorFullName,  String
    attribute :Description,      String
    attribute :Division,         Integer # HID/division
    attribute :EndDate,          DateTime
    attribute :ID,               String # guid
    attribute :Modified,         DateTime
    attribute :Modifier,         String # guid/user
    attribute :ModifierFullName, String
  end
end
