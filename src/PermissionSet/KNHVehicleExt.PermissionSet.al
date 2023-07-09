/// <summary>
/// Unknown KNH VehicleExt (ID 51600).
/// </summary>
permissionset 51600 "KNHVehicleExt"
{
    Assignable = true;
    Caption = 'Vehicle Ext', MaxLength = 30;
    Permissions =
        table "KNHGLETemp" = X,
        tabledata "KNHGLETemp" = RMID,
        codeunit "KNHCustomerSubscription" = X,
        page "KNHGeneralLedgerEntry" = X,
        page "KNHGLETemp" = X,
        query "KNHGeneralLedgerEntries" = X;
}
