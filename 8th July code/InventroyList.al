page 50119 "Inventory List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = InventoryItem;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(ItemNo; Rec.ItemNo)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(QuantityOnHand; Rec.QuantityOnHand)
                {
                    ApplicationArea = All;
                }
                field(ReorderPoint; Rec.ReorderPoint)
                {
                    ApplicationArea = All;
                }
                field(SupplierNo; Rec.SupplierNo)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}