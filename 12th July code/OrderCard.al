page 50127 "Order Card"
{
    PageType = Card;
    SourceTable = Order;
    Caption = 'Order';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field(OrderNo; Rec.OrderNo)
                {
                    ApplicationArea = All;
                    StyleExpr = 'Strong';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    StyleExpr = StatusStyle;
                }
                field(OrderDate; Rec.OrderDate)
                {
                    ApplicationArea = All;
                }
            }
            group(OrderDetails)
            {
                Caption = 'Order Details';
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
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(SendOrder)
            {
                ApplicationArea = All;
                Caption = 'Send Order';
                Image = SendTo;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    // Add code to send the order
                end;
            }
            action(ReceiveOrder)
            {
                ApplicationArea = All;
                Caption = 'Receive Order';
                // Image = ReceiveTo;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    // Add code to receive the order
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
        StatusStyle: Text;
        QuantityStyle: Text;
}