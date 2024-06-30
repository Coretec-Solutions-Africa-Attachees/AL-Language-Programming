table 50114 "Inventory"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "ID"; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(2; "Supplier ID"; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = Supplier.ID;
        }
        field(3; "Item Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Quantity"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Threshold"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Location"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Last Updated"; DateTime)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "ID")
        {
            Clustered = true;
        }
    }
}
