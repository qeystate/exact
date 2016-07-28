module Exact
  class SalesInvoice < Base
    include ActiveModel::Model
    include Virtus.model

    EXACT_SERVICE = 'salesinvoice'
    EXACT_GUID    = 'InvoiceID'

    attribute :AmountFC,                             String
    attribute :AmountDC,                             String
    attribute :Created,                              DateTime
    attribute :Creator,                              String
    attribute :CreatorFullName,                      String
    attribute :Currency,                             String
    attribute :Description,                          String
    attribute :Division,                             Integer
    attribute :Document,                             String
    attribute :DocumentNumber,                       Integer
    attribute :DocumentSubject,                      String
    attribute :DueDate,                              DateTime
    attribute :ExtraDutyAmountFC,                    String
    attribute :InvoiceDate,                          DateTime
    attribute :InvoiceID,                            String
    attribute :InvoiceTo,                            String
    attribute :InvoiceToContactPerson,               String
    attribute :InvoiceToContactPersonFullName,       String
    attribute :InvoiceToName,                        String
    attribute :InvoiceNumber,                        Integer
    attribute :Journal,                              String
    attribute :JournalDescription,                   String
    attribute :Modified,                             DateTime
    attribute :Modifier,                             String
    attribute :ModifierFullName,                     String
    attribute :OrderDate,                            DateTime
    attribute :OrderedBy,                            String
    attribute :OrderedByContactPerson,               String
    attribute :OrderedByContactPersonFullName,       String
    attribute :OrderedByName,                        String
    attribute :OrderNumber,                          Integer
    attribute :PaymentCondition,                     String
    attribute :PaymentConditionDescription,          String
    attribute :PaymentReference,                     String
    attribute :Remarks,                              String
    attribute :Salesperson,                          String
    attribute :SalespersonFullName,                  String
    attribute :Status,                               String
    attribute :StatusDescription,                    String
    attribute :TaxSchedule,                          String
    attribute :TaxScheduleCode,                      String
    attribute :TaxScheduleDescription,               String
    attribute :Type,                                 Integer
    attribute :TypeDescription,                      String
    attribute :VATAmountFC,                          String
    attribute :VATAmountDC,                          String
    attribute :YourRef,                              String
    attribute :StarterSalesInvoiceStatus,            String
    attribute :StarterSalesInvoiceStatusDescription, String
  end
end
