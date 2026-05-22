/// <summary>
/// TableExtension KNH Customer (ID 51601) extends Record Customer.
/// </summary>
namespace KNHVehicleExt;
using Microsoft.Sales.Customer;

tableextension 51601 KNHCustomer extends Customer
{
    fields
    {
        field(51600; "KNH MyField"; Integer)
        {
            Caption = 'MyField';
            DataClassification = ToBeClassified;
        }
    }
}
