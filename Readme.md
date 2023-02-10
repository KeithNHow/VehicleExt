# Vehicle Extension
-------------------
# Codeunit 
51600 KNH Customer Subscription
    Table = Customer x 2
    Page = Customer Card
# Page
51600 KNH General Ledger Entry
    Layout = Several Fields
    Actions = GLE Page from Query
    View = Source Type
51601 KNH GLE Temp
    Layout = Several Fields
# Page Ext
51600 Vehicle Card
    Field = Current Value
# Query
51600 General Ledger Entries
    DataItem = G/L Entry
    DataItemTableFilter - Source Type
# Report Ext.
51600 Customer Sales List
    Dataset = Integer
    Dataset = Customer
    Requestpage
# Table
51600 GLE Temp

# Table Ext
51600 Vehicle Ext - Extra field
51601 Customer - Extra field 
51602 GL entry - Extra field