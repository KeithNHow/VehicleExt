/// <summary>
/// PageExtension KNH Vehicle Card (ID 50060) extends Record KNH Vehicle Card.
/// </summary>
pageextension 50080 "KNH Vehicle Card Ext" extends "KNH Vehicle Card"
{
    layout
    {
        addafter("New Cost")
        {
            field("Current Value"; Rec."Current Value")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the current value of the vehicle.';
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }
}