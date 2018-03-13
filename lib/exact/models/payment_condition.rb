module Exact
  class PaymentCondition < Base
    include ActiveModel::Model
    include Virtus.model

    EXACT_SERVICE = 'cashflow'
    EXACT_GUID    = 'ID'
    OBSOLETE_INSTANCE_VARIABLES = []

    attribute :ID,                                    String
    attribute :Code,                                  String
    attribute :Created,                               DateTime
    attribute :Creator,                               String
    attribute :CreatorFullName,                       String
    attribute :CreditManagementScenario,              String
    attribute :CreditManagementScenarioCode,          String
    attribute :CreditManagementScenarioDescription,   String
    attribute :Description,                           String
    attribute :DiscountCalculation,                   String
    attribute :DiscountPaymentDays,                   Integer
    attribute :DiscountPercentage,                    Integer
    attribute :Division,                              Integer
    attribute :Modified,                              DateTime
    attribute :Modifier,                              String
    attribute :ModifierFullName,                      String
    attribute :PaymentDays,                           Integer
    attribute :PaymentDiscountType,                   String
    attribute :PaymentEndOfMonths,                    Integer
    attribute :PaymentMethod,                         String
    attribute :Percentage,                            Integer
    attribute :VATCalculation,                        String
  end
end
