table 50102 "Employee Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Employee ID"; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
            Editable = false;
        }
        field(2; "First Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Last Name"; Text[50])
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
        field(6; "Job Title"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Date Hired"; Date)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Employee ID")
        {
            Clustered = true;
        }
    }
}
