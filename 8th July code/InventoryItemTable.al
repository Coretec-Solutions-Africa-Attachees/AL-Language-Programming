table 50115 InventoryItem
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; ItemNo; Code[20])
        {
            Caption = 'Item No.';
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(3; QuantityOnHand; Decimal)
        {
            Caption = 'Quantity On Hand';
        }
        field(4; ReorderPoint; Decimal)
        {
            Caption = 'Reorder Point';
        }
        field(5; SupplierNo; Code[20])
        {
            Caption = 'Supplier No.';
            TableRelation = Vendor."No.";
        }
    }

    keys
    {
        key(PK; ItemNo)
        {
            Clustered = true;
        }
    }
}