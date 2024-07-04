page 50116 "Order Page"
{
    PageType = Card;
    SourceTable = Order;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Orders List';

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Inventory Item"; Rec."Inventory ID")
                {
                    ApplicationArea = All;
                    TableRelation = Inventory."ID";
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                }
                field("Supplier Name"; Rec."Supplier ID")
                {
                    ApplicationArea = All;
                    TableRelation = Supplier.ID;
                }
                field("Order Date"; Rec."Order Date")
                {
                    ApplicationArea = All;
                }
                field("Delivery Date"; Rec."Delivery Date")
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

    actions
    {
        area(Processing)
        {
            action("Cancel Order")
            {
                ApplicationArea = All;
                Caption = 'Cancel Order';

                trigger OnAction()
                begin
                    Rec.Status := 'Cancelled';
                    Rec.Modify();
                end;
            }
            action("Mark as Delivered")
            {
                ApplicationArea = All;
                Caption = 'Mark as Delivered';

                trigger OnAction()
                begin
                    Rec.Status := 'Delivered';
                    Rec.Modify();
                end;
            }
        }


    }

    trigger OnOpenPage()
    begin
        Rec.Reset();
    end;
}
