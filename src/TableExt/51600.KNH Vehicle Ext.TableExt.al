/// <summary>
/// TableExtension KNH Vehicle Ext (ID 51600) extends Record KNH Vehicle.
/// </summary>
tableextension 51600 "KNH Vehicle Ext" extends "KNH Vehicle"
{
    fields
    {
        field(50080; "Current Value"; Decimal)
        {
            Caption = 'Estimated Current Cost';
            DataClassification = ToBeClassified;
        }
    }
}
