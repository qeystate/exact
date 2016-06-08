module Exact
  class GeneralJournalEntry < Base
    include ActiveModel::Model
    include Virtus.model

    EXACT_SERVICE = 'generaljournalentry'
    EXACT_GUID    = 'EntryID'

    attribute :EntryID,                        String
    attribute :Created,                        DateTime
    attribute :Currency,                       String
    attribute :Division,                       Integer
    attribute :EntryNumber,                    Integer
    attribute :ExchangeRate,                   String
    attribute :FinancialPeriod,                Integer
    attribute :FinancialYear,                  Integer
    attribute :JournalCode,                    String
    attribute :JournalDescription,             String
    attribute :Modified,                       DateTime
    attribute :Reversal,                       Boolean
    attribute :Status,                         Integer
    attribute :StatusDescription,              String
    attribute :Type,                           Integer
    attribute :TypeDescription,                String
  end
end
