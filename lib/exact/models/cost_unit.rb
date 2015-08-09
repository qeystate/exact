module Exact
  class CostUnit < Base
    include ActiveModel::Model
    include Virtus.model

    EXACT_SERVICE  = 'hrm'
    EXACT_GUID     = 'ID'
    EXACT_ENDPOINT = 'Costunits'

    attribute :Code,             String
    attribute :Created,          DateTime
    attribute :Creator,          String
    attribute :CreatorFullName,  String
    attribute :Description,      String
    attribute :Division,         Integer
    attribute :ID,               String
    attribute :Modified,         DateTime
    attribute :Modifier,         String
    attribute :ModifierFullName, String
  end
end
