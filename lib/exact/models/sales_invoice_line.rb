module Exact
  class SalesInvoiceLine < Base
    include ActiveModel::Model
    include Virtus.model

    EXACT_SERVICE = 'salesinvoice'
    EXACT_GUID    = 'ID'

    attribute :AmountFC,                String
    attribute :AmountDC,                String
    attribute :CostCenter,              String
    attribute :CostCenterDescription,   String
    attribute :CostUnit,                String
    attribute :CostUnitDescription,     String
    attribute :DeliveryDate,            DateTime
    attribute :Description,             String
    attribute :Discount,                String
    attribute :Division,                Integer
    attribute :Employee,                String
    attribute :EmployeeFullName,        String
    attribute :EndTime,                 DateTime
    attribute :ExtraDutyAmountFC,       String
    attribute :ExtraDutyPercentage,     String
    attribute :GLAccount,               String
    attribute :GLAccountDescription,    String
    attribute :ID,                      String
    attribute :InvoiceID,               String
    attribute :Item,                    String
    attribute :ItemDescription,         String
    attribute :ItemCode,                String
    attribute :LineNumber,              Integer
    attribute :NetPrice,                String
    attribute :Notes,                   String
    attribute :Pricelist,               String
    attribute :PricelistDescription,    String
    attribute :Project,                 String
    attribute :ProjectDescription,      String
    attribute :Quantity,                String
    attribute :SalesOrder,              String
    attribute :SalesOrderLine,          String
    attribute :SalesOrderLineNumber,    Integer
    attribute :SalesOrderNumber,        Integer
    attribute :StartTime,               DateTime
    attribute :Subscription,            String
    attribute :SubscriptionDescription, String
    attribute :UnitCode,                String
    attribute :UnitDescription,         String
    attribute :UnitPrice,               String
    attribute :TaxSchedule,             String
    attribute :TaxScheduleCode,         String
    attribute :TaxScheduleDescription,  String
    attribute :VATAmountFC,             String
    attribute :VATAmountDC,             String
    attribute :VATCode,                 String
    attribute :VATCodeDescription,      String
    attribute :VATPercentage,           String
  end
end
