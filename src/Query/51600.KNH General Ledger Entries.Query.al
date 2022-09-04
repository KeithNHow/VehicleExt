/// <summary>
/// Query KNH General Ledger Entries (ID 51600).
/// </summary>
query 51600 "KNH General Ledger Entries"
{
    Caption = 'KNH General Ledger Entries';
    QueryType = Normal;

    elements
    {
        dataitem(GLEntry; "G/L Entry")
        {
            DataItemTableFilter = "Source Type" = const(Vendor);

            column(EntryNo; "Entry No.")
            {
            }
            column(GLAccountNo; "G/L Account No.")
            {
            }
            column(GLAccountName; "G/L Account Name")
            {
            }
            column(Amount; Amount)
            {
            }
            column(SourceNo; "Source No.")
            {
            }
            column(VendorNo; "Vendor No.")
            {
            }
        }
    }

    trigger OnBeforeOpen()
    begin
    end;
}
