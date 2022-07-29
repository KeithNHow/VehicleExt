/// <summary>
/// TableExtension KNH Customer (ID 50061) extends Record Customer.
/// </summary>
tableextension 50081 "KNH Customer" extends Customer
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
