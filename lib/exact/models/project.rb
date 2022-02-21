module Exact
  class Project < Base
    include ActiveModel::Model
    include Virtus.model

    EXACT_SERVICE = 'project'
    EXACT_GUID    = 'ID'
    OBSOLETE_INSTANCE_VARIABLES = []

    attribute :Account,                             String
    attribute :AccountCode,                         String
    attribute :AccountContact,                      String
    attribute :AccountName,                         String
    attribute :AllowAdditionalInvoicing,            Boolean
    attribute :BlockEntry,                          Boolean
    attribute :BlockPurchasing,                     Boolean
    attribute :BlockRebilling,                      Boolean
    attribute :BudgetedAmount,                      String
    attribute :BudgetedCosts,                       String
    attribute :BudgetedRevenue,                     String
    attribute :BudgetOverrunHours,                  Integer
    attribute :BudgetType,                          Integer
    attribute :BudgetTypeDescription,               String
    attribute :Classification,                      String
    attribute :ClassificationDescription,           String
    attribute :Code,                                String
    attribute :CostsAmountFC,                       String
    attribute :Created,                             DateTime
    attribute :Creator,                             String
    attribute :CreatorFullName,                     String
    attribute :CustomerPOnumber,                    String
    attribute :Description,                         String
    attribute :Division,                            String
    attribute :DivisionName,                        String
    attribute :EndDate,                             DateTime
    attribute :FixedPriceItem,                      String
    attribute :FixedPriceItemDescription,           String
    attribute :HasWBSLines,                         Boolean
    attribute :IncludeInvoiceSpecification,         Integer
    attribute :IncludeSpecificationInInvoicePdf,    Boolean
    attribute :InternalNotes,                       String
    attribute :InvoiceAsQuoted,                     Boolean
    attribute :ID,                                  String
    attribute :Manager,                             String
    attribute :ManagerFullname,                     String
    attribute :MarkupPercentage,                    String
    attribute :Modified,                            DateTime
    attribute :Modifier,                            String
    attribute :ModifierFullName,                    String
    attribute :Notes,                               String
    attribute :PrepaidItem,                         String
    attribute :PrepaidItemDescription,              String
    attribute :PrepaidType,                         String
    attribute :PrepaidTypeDescription,              String
    attribute :SalesTimeQuantity,                   String
    attribute :SourceQuotation,                     String
    attribute :StartDate,                           DateTime
    attribute :TimeQuantityToAlert,                 String
    attribute :Type,                                String
    attribute :TypeDescription,                     String
    attribute :UseBillingMilestones,                Boolean
  end
end
