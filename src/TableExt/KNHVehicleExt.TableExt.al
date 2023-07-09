/// <summary>
/// TableExtension KNH Vehicle Ext (ID 51600) extends Record KNH Vehicle.
/// </summary>
tableextension 51600 "KNHVehicleExt" extends "KNHVehicle"
{
    fields
    {
        field(51600; "KNH Current Value"; Decimal)
        {
            Caption = 'Estimated Current Cost';
            DataClassification = ToBeClassified;
        }
    }
}
