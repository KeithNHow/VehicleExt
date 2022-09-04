/// <summary>
/// Table KNH GLE Temp (ID 51600).
/// </summary>
table 51600 "KNH GLE Temp"
{
    Caption = 'KNH GLE Temp';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "G/L Entry"; Integer)
        {
            Caption = 'G/L Entry';
            DataClassification = ToBeClassified;
        }
        field(2; "G/L Account"; Code[20])
        {
            Caption = 'G/L Account';
            DataClassification = ToBeClassified;
        }
        field(3; "G/L Account Name"; Text[50])
        {
            Caption = 'G/L Account Name';
            DataClassification = ToBeClassified;
        }
        field(4; Amount; Decimal)
        {
            Caption = 'Amount';
            DataClassification = ToBeClassified;
        }
        field(5; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            DataClassification = ToBeClassified;
        }
        field(6; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "G/L Entry")
        {
            Clustered = true;
        }
    }
}
