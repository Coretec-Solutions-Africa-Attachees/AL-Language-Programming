page 50120 "Order List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Order;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(OrderNo; Rec.OrderNo)
                {
                    ApplicationArea = All;
                }
                field(ItemNo; Rec.ItemNo)
                {
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                }
                field(SupplierNo; Rec.SupplierNo)
                {
                    ApplicationArea = All;
                }
                field(OrderDate; Rec.OrderDate)
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}