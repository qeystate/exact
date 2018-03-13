module Exact
  class GeneralJournalEntryLine < Base
    include ActiveModel::Model
    include Virtus.model

    EXACT_SERVICE = 'generaljournalentry'
    EXACT_GUID    = 'ID'
    OBSOLETE_INSTANCE_VARIABLES = []

    attribute :ID,                             String
    attribute :Account,                        String
    attribute :AccountCode,                    String
    attribute :AccountName,                    String
    attribute :AmountDC,                       String
    attribute :AmountFC,                       String
    attribute :AmountVATDC,                    String
    attribute :AmountVATFC,                    String
    attribute :Asset,                          String
    attribute :AssetCode,                      String
    attribute :AssetDescription,               String
    attribute :CostCenter,                     String
    attribute :CostCenterDescription,          String
    attribute :CostUnit,                       String
    attribute :CostUnitDescription,            String
    attribute :Created,                        DateTime
    attribute :Creator,                        String
    attribute :CreatorFullName,                String
    attribute :Date,                           DateTime
    attribute :Description,                    String
    attribute :Division,                       Integer
    attribute :Document,                       String
    attribute :DocumentNumber,                 Integer
    attribute :DocumentSubject,                String
    attribute :EntryID,                        String
    attribute :EntryNumber,                    Integer
    attribute :GLAccount,                      String
    attribute :GLAccountCode,                  String
    attribute :GLAccountDescription,           String
    attribute :LineNumber,                     Integer
    attribute :Modified,                       DateTime
    attribute :Modifier,                       String
    attribute :ModifierFullName,               String
    attribute :Notes,                          String
    attribute :OffsetID,                       String
    attribute :OurRef,                         Integer
    attribute :Project,                        String
    attribute :ProjectCode,                    String
    attribute :ProjectDescription,             String
    attribute :Quantity,                       String
    attribute :VATBaseAmountDC,                String
    attribute :VATBaseAmountFC,                String
    attribute :VATCode,                        String
    attribute :VATCodeDescription,             String
    attribute :VATPercentage,                  String
    attribute :VATType,                        String
  end
end
