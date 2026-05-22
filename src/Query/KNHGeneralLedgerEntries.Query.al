/// <summary>
/// Query KNH General Ledger Entries (ID 51600).
/// </summary>
namespace KNHVehicleExt;
using Microsoft.finance.GeneralLedger.Ledger;

query 51600 KNHGeneralLedgerEntries
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
        }
    }

    trigger OnBeforeOpen()
    begin
    end;
}
