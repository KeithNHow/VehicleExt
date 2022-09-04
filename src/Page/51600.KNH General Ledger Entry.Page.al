/// <summary>
/// Page KNH General Ledger Entry (ID 51600).
/// </summary>
page 51600 "KNH General Ledger Entry"
{
    ApplicationArea = All;
    Caption = 'KNH General Ledger Entry';
    PageType = List;
    SourceTable = "G/L Entry";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the entry, as assigned from the specified number series when the entry was created.';
                }
                field("G/L Account No."; Rec."G/L Account No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the account that the entry has been posted to.';
                }
                field("G/L Account Name"; Rec."G/L Account Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the name of the account that the entry has been posted to.';
                }
                field("Source No."; Rec."Source No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the source document that the entry originates from.';
                }
                field("Source Code"; Rec."Source Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the source code that specifies where the entry was created.';
                }
                field("Source Type"; Rec."Source Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the source type that applies to the source number that is shown in the Source No. field.';
                }
                field("Vendor No."; Rec."Vendor No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Vendor No. field.';
                }
            }
        }
    }
    actions
    {
        area(navigation)
        {
            action(GLEQuery)
            {
                ApplicationArea = All;
                Caption = 'GLE Page from Query';
                Tooltip = 'GLE Page from Query';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;
                Image = Export;

                trigger OnAction()
                var
                    GLETable: Record "KNH GLE Temp";
                    GLEPage: Page "KNH GLE";
                    GLEQuery: Query "KNH General Ledger Entries";
                begin
                    GLETable.DeleteAll();
                    GLEQuery.Open();
                    while GLEQuery.Read() do begin
                        GLETable.Init();
                        GLETable."G/L Entry" := GLEQuery.EntryNo;
                        GLETable."G/L Account" := GLEQuery.GLAccountNo;
                        GLETable."G/L Account Name" := GLEQuery.GLAccountName;
                        GLETable.Amount := GLEQuery.Amount;
                        GLETable."Source No." := GLEQuery.SourceNo;
                        GLETable."Vendor No." := GLEQuery.VendorNo;
                        GLETable.Insert();
                    end;
                    GLEQuery.Close();
                    GLEPage.Run();
                end;
            }
        }
    }
    views
    {
        view(SourceType)
        {
            Caption = 'Source Type';
            Filters = where("Source Type" = const(Vendor));
        }
    }
}