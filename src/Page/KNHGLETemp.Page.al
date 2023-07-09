/// <summary>
/// Page KNH GLE (ID 51601).
/// </summary>
page 51601 "KNHGLETemp"
{
    ApplicationArea = Basic, Suite;
    Caption = 'KNH GLE';
    PageType = List;
    SourceTable = "KNHGLETemp";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Entry No."; Rec."G/L Entry")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Entry No.';
                    ToolTip = 'Specifies the number of the entry, as assigned from the specified number series when the entry was created.';
                }
                field("G/L Account No."; Rec."G/L Account")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'G/L Account No.';
                    ToolTip = 'Specifies the number of the account that the entry has been posted to.';
                }
                field("G/L Account Name"; Rec."G/L Account Name")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'G/L Account Name';
                    ToolTip = 'Specifies the name of the account that the entry has been posted to.';
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Amount';
                    ToolTip = 'Specifies the Amount of the entry.';
                }
                field("Source No."; Rec."Source No.")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Source No.';
                    ToolTip = 'Specifies the number of the source document that the entry originates from.';
                }
                field("Vendor No."; Rec."Vendor No.")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Vendor No.';
                    ToolTip = 'Specifies the value of the Vendor No. field.';
                }
            }
        }
    }
}
