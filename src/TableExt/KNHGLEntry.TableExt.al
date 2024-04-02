/// <summary>
/// TableExtension KNH GL Entry (ID 51602) extends Record G/L Entry.
/// </summary>
tableextension 51602 "KNHGLEntry" extends "G/L Entry"
{
    fields
    {
        field(51600; "KNH Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            FieldClass = FlowField;
            CalcFormula = lookup(Vendor."No." where("No." = field("Source No.")));
            Editable = false;
        }
    }
    keys
    {
        key(Key20; "Source Code")
        {
        }
    }
}
