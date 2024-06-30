table 50116 "Orders"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "ID"; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(2; "Inventory ID"; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = Inventory.ID;
        }
        field(3; "Supplier ID"; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = Supplier.ID;
        }
        field(4; "Quantity"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Order Date"; DateTime)
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Delivery Date"; DateTime)
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Status"; Text[50])
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
