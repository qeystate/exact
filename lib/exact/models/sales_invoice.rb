module Exact
  class SalesInvoice < Base
    include ActiveModel::Model
    include Virtus.model

    EXACT_SERVICE = 'salesinvoice'
    EXACT_GUID    = 'InvoiceID'
    OBSOLETE_INSTANCE_VARIABLES = ['TaxSchedule', 
                                    'TaxScheduleCode', 
                                    'TaxScheduleDescription']

    attribute :AmountDC,                             String
    attribute :AmountDiscount,                       String
    attribute :AmountDiscountExclVat,                String
    attribute :AmountFC,                             String
    attribute :AmountFCExclVat,                      String
    attribute :Created,                              DateTime
    attribute :Creator,                              String
    attribute :CreatorFullName,                      String
    attribute :Currency,                             String
    attribute :Description,                          String
    attribute :Discount,                             String
    attribute :DiscountType,                         Integer
    attribute :Division,                             Integer
    attribute :DeliverTo,                            String
    attribute :DeliverToAddress,                     String
    attribute :DeliverToContactPerson,               String
    attribute :DeliverToContactPersonFullName,       String
    attribute :DeliverToName,                        String
    attribute :Document,                             String
    attribute :DocumentNumber,                       Integer
    attribute :DocumentSubject,                      String
    attribute :DueDate,                              DateTime
    attribute :ExtraDutyAmountFC,                    String
    attribute :GAccountAmountFC,                     String
    attribute :IncotermAddress,                      String
    attribute :IncotermCode,                         String
    attribute :IncotermVersion,                      Integer
    attribute :InvoiceDate,                          DateTime
    attribute :InvoiceID,                            String
    attribute :InvoiceTo,                            String
    attribute :InvoiceToContactPerson,               String
    attribute :InvoiceToContactPersonFullName,       String
    attribute :InvoiceToName,                        String
    attribute :InvoiceNumber,                        Integer
    attribute :IsExtraDuty,                          Boolean
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
    attribute :SalesChannel,                         String
    attribute :SalesChannelCode,                     String
    attribute :SalesChannelDescription,              String
    attribute :Salesperson,                          String
    attribute :SalespersonFullName,                  String
    attribute :SelectionCode,                        String
    attribute :SelectionCodeCode,                    String
    attribute :SelectionCodeDescription,             String
    attribute :ShippingMethod,                       String
    attribute :ShippingMethodCode,                   String
    attribute :ShippingMethodDescription,            String
    attribute :StarterSalesInvoiceStatus,            String
    attribute :StarterSalesInvoiceStatusDescription, String
    attribute :Status,                               String
    attribute :StatusDescription,                    String
    attribute :TaxSchedule,                          String
    attribute :TaxScheduleCode,                      String
    attribute :TaxScheduleDescription,               String
    attribute :Type,                                 Integer
    attribute :TypeDescription,                      String
    attribute :VATAmountFC,                          String
    attribute :VATAmountDC,                          String
    attribute :Warehouse,                            String
    attribute :WithholdingTaxAmountFC,               String
    attribute :WithholdingTaxBaseAmount,             String
    attribute :WithholdingTaxPercentage,             String
    attribute :YourRef,                              String
  end
end
