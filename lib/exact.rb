require 'exact/version'
require 'active_support/inflector'
require 'exact/configuration'

module Exact
  autoload :Client, 'exact/client'

  # Models
  autoload :Account,                 'exact/models/account'
  autoload :BankAccount,             'exact/models/bank_account'
  autoload :Base,                    'exact/models/base'
  autoload :CostCenter,              'exact/models/cost_center'
  autoload :CostUnit,                'exact/models/cost_unit'
  autoload :GLAccount,               'exact/models/g_l_account'
  autoload :Item,                    'exact/models/item'
  autoload :Layout,                  'exact/models/layout'
  autoload :Project,                 'exact/models/project'
  autoload :SalesInvoice,            'exact/models/sales_invoice'
  autoload :SalesInvoiceLine,        'exact/models/sales_invoice_line'
  autoload :VATCode,                 'exact/models/vat_code'
  autoload :Division,                'exact/models/division'
  autoload :Unit,                    'exact/models/unit'
  autoload :PaymentCondition,        'exact/models/payment_condition'
  autoload :GeneralJournalEntry,     'exact/models/general_journal_entry'
  autoload :GeneralJournalEntryLine, 'exact/models/general_journal_entry_line'
  autoload :Document,                'exact/models/document'

  # Mappings
  autoload :AccountMapping,                 'exact/mappings/account_mapping'
  autoload :BankAccountMapping,             'exact/mappings/bank_account_mapping'
  autoload :BaseMapping,                    'exact/mappings/base_mapping'
  autoload :CostCenterMapping,              'exact/mappings/cost_center_mapping'
  autoload :CostUnitMapping,                'exact/mappings/cost_unit_mapping'
  autoload :GLAccountMapping,               'exact/mappings/g_l_account_mapping'
  autoload :ItemMapping,                    'exact/mappings/item_mapping'
  autoload :LayoutMapping,                  'exact/mappings/layout_mapping'
  autoload :ProjectMapping,                 'exact/mappings/project_mapping'
  autoload :SalesInvoiceMapping,            'exact/mappings/sales_invoice_mapping'
  autoload :SalesInvoiceLineMapping,        'exact/mappings/sales_invoice_line_mapping'
  autoload :VATCodeMapping,                 'exact/mappings/vat_code_mapping'
  autoload :DivisionMapping,                'exact/mappings/division_mapping'
  autoload :UnitMapping,                    'exact/mappings/unit_mapping'
  autoload :PaymentConditionMapping,        'exact/mappings/payment_condition_mapping'
  autoload :GeneralJournalEntryMapping,     'exact/mappings/general_journal_entry_mapping'
  autoload :GeneralJournalEntryLineMapping, 'exact/mappings/general_journal_entry_line_mapping'
  autoload :Document,                       'exact/mappings/document_mapping'

  Error = Class.new(StandardError)
end
