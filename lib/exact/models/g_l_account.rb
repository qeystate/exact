module Exact
  class GLAccount < Base
    include ActiveModel::Model
    include Virtus.model

    EXACT_SERVICE = 'financial'
    EXACT_GUID    = 'ID'
    OBSOLETE_INSTANCE_VARIABLES = []

    attribute :AssimilatedVATBox,              Integer
    attribute :BalanceSide,                    String
    attribute :BalanceType,                    String
    attribute :BelcotaxType,                   Integer
    attribute :Code,                           String
    attribute :Compress,                       Boolean
    attribute :Costcenter,                     String
    attribute :CostcenterDescription,          String
    attribute :Costunit,                       String
    attribute :CostunitDescription,            String
    attribute :Created,                        DateTime
    attribute :Creator,                        String
    attribute :CreatorFullName,                String
    attribute :DeductibilityPercentages,       String
    attribute :Description,                    String
    attribute :Division,                       Integer
    attribute :ExcludeVATListing,              String
    attribute :ExpenseNonDeductiblePercentage, String
    attribute :ID,                             String
    attribute :IsBlocked,                      Boolean
    attribute :Matching,                       Boolean
    attribute :Modified,                       DateTime
    attribute :Modifier,                       String
    attribute :ModifierFullName,               String
    attribute :PrivateGLAccount,               String
    attribute :PrivatePercentage,              String
    attribute :ReportingCode,                  String
    attribute :RevalueCurrency,                Boolean
    attribute :SearchCode,                     String
    attribute :Type,                           Integer
    attribute :TypeDescription,                String
    attribute :UseCostcenter,                  String
    attribute :UseCostunit,                    String
    attribute :VATCode,                        String
    attribute :VATDescription,                 String
    attribute :VATGLAccountType,               String
    attribute :VATNonDeductibleGLAccount,      String
    attribute :VATNonDeductiblePercentage,     String
    attribute :VATSystem,                      String
    attribute :YearEndCostGLAccount,           String
    attribute :YearEndReflectionGLAccount,     String
  end
end
