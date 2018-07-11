module Exact
  class Account < Base
    include ActiveModel::Model
    include Virtus.model

    EXACT_SERVICE = 'crm'
    EXACT_GUID    = 'ID'
    OBSOLETE_INSTANCE_VARIABLES = ['BRIN', 
                                    'Classification',
                                    'ClassificationDescription',
                                    'Costcenter',
                                    'CostcenterDescription',
                                    'CostPaid',
                                    'Currency',
                                    'CustomerSince',
                                    'Document',
                                    'DunsNumber',
                                    'IsBank',
                                    'IsMember',
                                    'IsPurchase',
                                    'SalesTaxSchedule',
                                    'SalesTaxScheduleCode',
                                    'SalesTaxScheduleDescription',
                                    'StatusSince']

    attribute :Accountant,                          String
    attribute :AccountManager,                      String
    attribute :AccountManagerFullName,              String
    attribute :AccountManagerHID,                   String
    attribute :ActivitySector,                      String
    attribute :ActivitySubSector,                   String
    attribute :AddressLine1,                        String
    attribute :AddressLine2,                        String
    attribute :AddressLine3,                        String
    attribute :Blocked,                             String
    attribute :BRIN,                                String
    attribute :BusinessType,                        String
    attribute :CanDropShip,                         String
    attribute :ChamberOfCommerce,                   String
    attribute :City,                                String
    attribute :Classification,                      String
    attribute :Classification1,                     String
    attribute :Classification2,                     String
    attribute :Classification3,                     String
    attribute :Classification4,                     String
    attribute :Classification5,                     String
    attribute :Classification6,                     String
    attribute :Classification7,                     String
    attribute :Classification8,                     String
    attribute :ClassificationDescription,           String
    attribute :Code,                                String
    attribute :CodeAtSupplier,                      String
    attribute :CompanySize,                         String
    attribute :ConsolidationScenario,               String
    attribute :ControlledDate,                      DateTime
    attribute :Costcenter,                          String
    attribute :CostcenterDescription,               String
    attribute :CostPaid,                            String
    attribute :Country,                             String
    attribute :CountryName,                         String
    attribute :Created,                             DateTime
    attribute :Creator,                             String
    attribute :CreatorFullName,                     String
    attribute :CreditLinePurchase,                  String
    attribute :CreditLineSales,                     String
    attribute :Currency,                            String
    attribute :CustomerSince,                       DateTime
    attribute :DatevCreditorCode,                   String
    attribute :DatevDebtorCode,                     String
    attribute :DiscountPurchase,                    String
    attribute :DiscountSales,                       String
    attribute :Division,                            String
    attribute :Document,                            String
    attribute :DunsNumber,                          String
    attribute :Email,                               String
    attribute :EndDate,                             DateTime
    attribute :EstablishedDate,                     DateTime
    attribute :Fax,                                 String
    attribute :GLAccountPurchase,                   String
    attribute :GLAccountSales,                      String
    attribute :GLAP,                                String
    attribute :GLAR,                                String
    attribute :HasWithholdingTaxSales,              Boolean
    attribute :ID,                                  String
    attribute :IgnoreDatevWarningMessage,           String
    attribute :IntraStatArea,                       String
    attribute :IntraStatDeliveryTerm,               String
    attribute :IntraStatSystem,                     String
    attribute :IntraStatTransactionA,               String
    attribute :IntraStatTransactionB,               String
    attribute :IntraStatTransportMethod,            String
    attribute :InvoiceAccount,                      String
    attribute :InvoiceAccountCode,                  String
    attribute :InvoiceAccountName,                  String
    attribute :InvoiceAttachmentType,               String
    attribute :InvoicingMethod,                     String
    attribute :IsAccountant,                        String
    attribute :IsAgency,                            String
    attribute :IsAnonymised,                        String
    attribute :IsBank,                              String
    attribute :IsExtraDuty,                         String
    attribute :IsCompetitor,                        String
    attribute :IsMailing,                           String
    attribute :IsMember,                            String
    attribute :IsPilot,                             String
    attribute :IsPurchase,                          String
    attribute :IsReseller,                          String
    attribute :IsSales,                             String
    attribute :IsSupplier,                          String
    attribute :Language,                            String
    attribute :LanguageDescription,                 String
    attribute :Latitude,                            String
    attribute :LeadPurpose,                         String
    attribute :LeadSource,                          String
    attribute :LogoFileName,                        String
    attribute :LogoThumbnailUrl,                    String
    attribute :LogoUrl,                             String
    attribute :Logo,                                String
    attribute :Longitude,                           String
    attribute :MainContact,                         String
    attribute :Modified,                            DateTime
    attribute :Modifier,                            String
    attribute :ModifierFullName,                    String
    attribute :Name,                                String
    attribute :OINNumber,                           String
    attribute :Parent,                              String
    attribute :PayAsYouEarn,                        String
    attribute :PaymentConditionPurchase,            String
    attribute :PaymentConditionPurchaseDescription, String
    attribute :PaymentConditionSales,               String
    attribute :PaymentConditionSalesDescription,    String
    attribute :Phone,                               String
    attribute :PhoneExtension,                      String
    attribute :Postcode,                            String
    attribute :PriceList,                           String
    attribute :PurchaseCurrency,                    String
    attribute :PurchaseCurrencyDescription,         String
    attribute :PurchaseLeadDays,                    String
    attribute :PurchaseVATCode,                     String
    attribute :PurchaseVATCodeDescription,          String
    attribute :Remarks,                             String
    attribute :RecepientOfCommissions,              String
    attribute :Reseller,                            String
    attribute :ResellerCode,                        String
    attribute :ResellerName,                        String
    attribute :RSIN,                                String
    attribute :SalesCurrency,                       String
    attribute :SalesCurrencyDescription,            String
    attribute :SalesVATCode,                        String
    attribute :SalesVATCodeDescription,             String
    attribute :SearchCode,                          String
    attribute :SecurityLevel,                       String
    attribute :SeparateInvPerProject,               String
    attribute :SeparateInvPerSubscription,          String
    attribute :ShippingLeadDays,                    String
    attribute :ShippingMethod,                      String
    attribute :StartDate,                           DateTime
    attribute :State,                               String
    attribute :StateName,                           String
    attribute :Status,                              String, default: 'C'
    attribute :StatusSince,                         DateTime
    attribute :SalesTaxSchedule,                    String
    attribute :SalesTaxScheduleCode,                String
    attribute :SalesTaxScheduleDescription,         String
    attribute :TradeName,                           String
    attribute :Type,                                String
    attribute :UniqueTaxpayerReference,             String
    attribute :VATLiability,                        String
    attribute :VATNumber,                           String
    attribute :Website,                             String
  end
end
