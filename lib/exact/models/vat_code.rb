module Exact
  class VATCode < Base
    include ActiveModel::Model
    include Virtus.model

    EXACT_SERVICE = 'vat'
    EXACT_GUID    = 'ID'

    attribute :Account,                       String
    attribute :AccountCode,                   String
    attribute :AccountName,                   String
    attribute :CalculationBasis,              String
    attribute :Charged,                       Boolean
    attribute :Code,                          String
    attribute :Country,                       String
    attribute :Created,                       DateTime
    attribute :Creator,                       String
    attribute :CreatorFullName,               String
    attribute :Description,                   String
    attribute :Division,                      Integer
    attribute :EUSalesListing,                String
    attribute :GLDiscountPurchase,            String
    attribute :GLDiscountPurchaseCode,        String
    attribute :GLDiscountPurchaseDescription, String
    attribute :GLDiscountSales,               String
    attribute :GLDiscountSalesCode,           String
    attribute :GLDiscountSalesDescription,    String
    attribute :GLToClaim,                     String
    attribute :GLToClaimCode,                 String
    attribute :GLToClaimDescription,          String
    attribute :GLToPay,                       String
    attribute :GLToPayCode,                   String
    attribute :GLToPayDescription,            String
    attribute :ID,                            String
    attribute :IntraStat,                     Boolean
    attribute :IsBlocked,                     Boolean
    attribute :LegalText,                     String
    attribute :Modified,                      DateTime
    attribute :Modifier,                      String
    attribute :ModifierFullName,              String
    attribute :Percentage,                    String
    attribute :TaxReturnType,                 Integer
    attribute :Type,                          String
    attribute :VatDocType,                    String
    attribute :VatMargin,                     String
    attribute :VATPartialRatio,               Integer
    attribute :VATTransactionType,            String
  end
end


