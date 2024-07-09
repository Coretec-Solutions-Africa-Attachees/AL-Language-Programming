table 50119 "Recent Activity"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
        }
        field(2; "Date"; Date)
        {
        }
        field(3; "Time"; Time)
        {
        }
        field(4; "User ID"; Code[50])
        {
        }
        field(5; "Activity Type"; Enum "Activity Type")
        {
        }
        field(6; "Description"; Text[250])
        {
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
}

enum 50120 "Activity Type"
{
    Extensible = true;

    value(0; Sale)
    {
    }
    value(1; Purchase)
    {
    }
    value(2; Transfer)
    {
    }
    value(3; Other)
    {
    }
}