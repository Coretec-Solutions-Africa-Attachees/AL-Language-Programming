page 50120 "Order List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Order;
    CardPageId = 50121;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(OrderNo; Rec.OrderNo)
                {
                    ApplicationArea = All;
                    StyleExpr = OrderNoStyle;
                }
                field(ItemNo; Rec.ItemNo)
                {
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                    StyleExpr = QuantityStyle;
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
                    StyleExpr = StatusStyle;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(CreateOrder)
            {
                ApplicationArea = All;
                Caption = 'Create New Order';
                Image = NewOrder;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    // Add code to create a new order
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        SetStyles();
    end;

    local procedure SetStyles()
    var
        HighQuantity: Decimal;
    begin
        HighQuantity := 100; // Set this to your desired threshold

        OrderNoStyle := 'Strong';

        if Rec.Quantity > HighQuantity then
            QuantityStyle := 'Favorable'
        else
            QuantityStyle := 'Subordinate';

        case Rec.Status of
            Rec.Status::Open:
                StatusStyle := 'Ambiguous';
            Rec.Status::Sent:
                StatusStyle := 'Favorable';
            Rec.Status::Received:
                StatusStyle := 'StrongAccent';
        end;
    end;

    var
        OrderNoStyle: Text;
        QuantityStyle: Text;
        StatusStyle: Text;
}