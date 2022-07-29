/// <summary>
/// TableExtension KNH Vehicle Ext (ID 50060) extends Record KNH Vehicle.
/// </summary>
tableextension 50080 "KNH Vehicle Ext" extends "KNH Vehicle"
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
