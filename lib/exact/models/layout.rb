module Exact
  class Layout < Base
    include ActiveModel::Model
    include Virtus.model

    EXACT_SERVICE = 'salesinvoice'
    EXACT_GUID    = 'InvoiceID'
    OBSOLETE_INSTANCE_VARIABLES = []

    attribute :ID,               String
    attribute :Created,          DateTime
    attribute :Creator,          String
    attribute :CreatorFullName,  String
    attribute :Division,         String
    attribute :Modified,         DateTime
    attribute :Modifier,         String
    attribute :ModifierFullName, String
    attribute :Subject,          String
    attribute :Type,             Integer
  end
end
