table 50116 Order
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; OrderNo; Code[20])
        {
            Caption = 'Order No.';
        }
        field(2; ItemNo; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = InventoryItem;
        }
        field(3; Quantity; Decimal)
        {
            Caption = 'Quantity';
        }
        field(4; SupplierNo; Code[20])
        {
            Caption = 'Supplier No.';
            TableRelation = Vendor."No.";
        }
        field(5; OrderDate; Date)
        {
            Caption = 'Order Date';
        }
        field(6; Status; Option)
        {
            Caption = 'Status';
            OptionMembers = "Open","Sent","Received";
        }
    }

    keys
    {
        key(PK; OrderNo)
        {
            Clustered = true;
        }
    }
}