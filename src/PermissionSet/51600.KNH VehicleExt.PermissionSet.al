/// <summary>
/// Unknown KNH VehicleExt (ID 51600).
/// </summary>
permissionset 51600 "KNH VehicleExt"
{
    Assignable = true;
    Caption = 'Vehicle Ext', MaxLength = 30;
    Permissions =
        table "KNH GLE Temp" = X,
        tabledata "KNH GLE Temp" = RMID,
        codeunit "KNH Customer Subscription" = X,
        page "KNH General Ledger Entry" = X,
        page "KNH GLE" = X,
        query "KNH General Ledger Entries" = X;
}
