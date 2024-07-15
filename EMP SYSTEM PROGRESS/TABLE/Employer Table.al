table 50103 "Employer Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Employer ID"; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
            Editable = false;
        }
        field(2; "Company Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Contact Person"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Email"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Phone"; Text[20])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Employer ID")
        {
            Clustered = true;
        }
    }
}
