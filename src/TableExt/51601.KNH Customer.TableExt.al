/// <summary>
/// TableExtension KNH Customer (ID 51601) extends Record Customer.
/// </summary>
tableextension 51601 "KNH Customer" extends Customer
{
    fields
    {
        field(50080; MyField; Integer)
        {
            Caption = 'MyField';
            DataClassification = ToBeClassified;
        }
    }
}
