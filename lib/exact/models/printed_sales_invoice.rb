module Exact
  class PrintedSalesInvoice < Base
    include ActiveModel::Model
    include Virtus.model

    EXACT_SERVICE = 'salesinvoice'
    EXACT_GUID    = 'InvoiceID'
    OBSOLETE_INSTANCE_VARIABLES = []

    attribute :InvoiceID,                       String
    attribute :Division,                        Integer
    attribute :Document,                        String
    attribute :DocumentCreationError,           String
    attribute :DocumentCreationSuccess,         String
    attribute :DocumentLayout,                  String
    attribute :EmailCreationError,              String
    attribute :EmailCreationSuccess,            String
    attribute :EmailLayout,                     String
    attribute :ExtraText,                       String
    attribute :InvoiceDate,                     DateTime
    attribute :PostboxMessageCreationError,     String
    attribute :PostboxMessageCreationSuccess,   String
    attribute :PostboxSender,                   String
    attribute :ReportingPeriod,                 Integer
    attribute :ReportingYear,                   Integer
    attribute :SendEmailToCustomer,             Boolean
    attribute :SenderEmailAddress,              String
    attribute :SendInvoiceToCustomerPostbox,    Boolean
    attribute :SendOutputBasedOnAccount,        Boolean
  end
end
