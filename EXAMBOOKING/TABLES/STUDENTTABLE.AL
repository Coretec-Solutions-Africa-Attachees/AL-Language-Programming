table 50100 Student
{
    DataClassification = ToBeClassified;
    fields
    {
        field(1; "Student ID"; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(2; "Email"; Text[80])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Password"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Balance"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

    }
    keys
    {
        key(PK; "Student ID")
        {
            Clustered = true;
        }
        // key(UQ; Email)
        // {
        //    Unique = true;
        //}
    }
}
