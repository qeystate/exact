module Exact
  class BankAccount < Base
    include ActiveModel::Model
    include Virtus.model

    EXACT_SERVICE = 'crm'
    EXACT_GUID    = 'ID'

    attribute :Account,               String
    attribute :AccountName,           String
    attribute :Bank,                  String
    attribute :BankAccount,           String
    attribute :BankAccountHolderName, String
    attribute :BankDescription,       String
    attribute :BankName,              String
    attribute :BICCode,               String
    attribute :Created,               DateTime
    attribute :Creator,               String
    attribute :CreatorFullName,       String
    attribute :Description,           String
    attribute :Division,              String
    attribute :Format,                String
    attribute :IBAN,                  String
    attribute :ID,                    String
    attribute :Main,                  Boolean, default: true
    attribute :Modified,              DateTime
    attribute :Modifier,              String
    attribute :ModifierFullName,      String
    attribute :PaymentServiceAccount, String
    attribute :Type,                  String, default: 'A'
    attribute :TypeDescription,       String, default: 'Account'
  end
end
