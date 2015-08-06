module Exact
  class Project < Base
    include ActiveModel::Model
    include Virtus.model

    EXACT_SERVICE = 'project'
    EXACT_GUID    = 'ID'

    attribute :Account,                   String
    attribute :AccountCode,               String
    attribute :AccountName,               String
    attribute :AccountContact,            String
    attribute :Classification,            String
    attribute :ClassificationDescription, String
    attribute :Code,                      String
    attribute :CostsAmountFC,             String
    attribute :Created,                   DateTime
    attribute :Creator,                   String
    attribute :CreatorFullName,           String
    attribute :CustomerPOnumber,          String
    attribute :Description,               String
    attribute :Division,                  String
    attribute :DivisionName,              String
    attribute :EndDate,                   DateTime
    attribute :FixedPriceItem,            String
    attribute :FixedPriceItemDescription, String
    attribute :ID,                        String
    attribute :Manager,                   String
    attribute :ManagerFullname,           String
    attribute :Modified,                  DateTime
    attribute :Modifier,                  String
    attribute :ModifierFullName,          String
    attribute :Notes,                     String
    attribute :SalesTimeQuantity,         String
    attribute :StartDate,                 DateTime
    attribute :TimeQuantityToAlert,       String
    attribute :Type,                      String
    attribute :TypeDescription,           String
    attribute :BudgetedAmount,            String
    attribute :PrepaidType,               String
    attribute :PrepaidTypeDescription,    String
    attribute :PrepaidItem,               String
    attribute :PrepaidItemDescription,    String
    attribute :MarkupPercentage,          String
    attribute :BudgetedCosts,             String
    attribute :BudgetedRevenue,           String
  end
end
