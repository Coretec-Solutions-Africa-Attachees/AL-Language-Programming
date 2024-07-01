table 50115 "Supplier"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "ID"; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(2; "Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Contact Info"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Email"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Phone"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Account Balance"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "ID", "Name")
        {
            Clustered = true;
        }
    }
}
