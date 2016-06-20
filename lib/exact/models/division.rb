module Exact
  class Division < Base
    include ActiveModel::Model
    include Virtus.model

    EXACT_SERVICE = 'hrm'
    EXACT_GUID    = 'Code'

    attribute :Code,                Integer
    attribute :BlockingStatus,      Integer
    attribute :Country,             String
    attribute :CountryDescription,  String
    attribute :Created,             DateTime
    attribute :Creator,             String
    attribute :CreatorFullName,     String
    attribute :Currency,            String
    attribute :CurrencyDescription, String
    attribute :CustomerCode,        String
    attribute :CustomerName,        String
    attribute :Customer,            String
    attribute :Description,         String
    attribute :HID,                 Integer
    attribute :Main,                Boolean
    attribute :Modified,            DateTime
    attribute :Modifier,            String
    attribute :ModifierFullName,    String
    attribute :SiretNumber,         String
    attribute :StartDate,           DateTime
    attribute :Status,              Integer
    attribute :TaxOfficeNumber,     String
    attribute :TaxReferenceNumber,  String
    attribute :VATNumber,           String
    attribute :Website,             String
  end
end
