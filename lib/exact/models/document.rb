module Exact
  class Document < Base
    include ActiveModel::Model
    include Virtus.model

    EXACT_SERVICE = 'read/crm'
    EXACT_GUID    = 'ID'
    OBSOLETE_INSTANCE_VARIABLES = []

    attribute :ID,                              String
    attribute :Account,                         String
    attribute :Contact,                         String
    attribute :Created,                         DateTime
    attribute :Creator,                         String
    attribute :CreatorFullName,                 String
    attribute :Division,                        Integer
    attribute :DocumentDate,                    DateTime
    attribute :DocumentFolder,                  String
    attribute :DocumentViewUrl,                 String
    attribute :HasEmptyBody,                    String
    attribute :HID,                             Integer
    attribute :Modified,                        DateTime
    attribute :Modifier,                        String
    attribute :Opportunity,                     String
    attribute :PurchaseInvoiceNumber,           Integer
    attribute :PurchaseOrderNumber,             Integer
    attribute :SalesInvoiceNumber,              Integer
    attribute :SalesOrderNumber,                Integer
    attribute :SendMethod,                      Integer
    attribute :Subject,                         String
    attribute :Type,                            Integer
    attribute :TypeDescription,                 String
  end
end
