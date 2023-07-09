/// <summary>
/// PageExtension KNH Vehicle Card (ID 51600) extends Record KNH Vehicle Card.
/// </summary>
pageextension 51600 "KNHVehicleCardExt" extends "KNHVehicleCard"
{
    layout
    {
        addafter("New Cost")
        {
            field("KNHCurrent Value"; Rec."KNH Current Value")
            {
                ApplicationArea = All;
                Caption = 'Current Value';
                ToolTip = 'Specifies the current value of the vehicle.';
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }
}