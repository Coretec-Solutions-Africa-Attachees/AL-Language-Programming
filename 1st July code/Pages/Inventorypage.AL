page 50115 "Inventory Page"
{
    PageType = List;
    SourceTable = Inventory;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Inventory List';

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Item Name"; Rec."Item Name")
                {
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                }
                field(Threshold; Rec.Threshold)
                {
                    ApplicationArea = All;
                }
                field(Location; Rec.Location)
                {
                    ApplicationArea = All;
                }
                field("Last Updated"; Rec."Last Updated")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Generate Order")
            {
                ApplicationArea = All;
                Caption = 'Generate Order';

                trigger OnAction()
                var
                    InventoryRec: Record Inventory;
                    OrdersRec: Record Order;
                begin
                    if Rec."Quantity" < Rec."Threshold" then begin
                        OrdersRec.Init();
                        OrdersRec."Inventory ID" := Rec.ID;
                        OrdersRec."Supplier ID" := Rec."Supplier ID";
                        OrdersRec."Quantity" := Rec."Threshold" - Rec."Quantity";
                        OrdersRec."Order Date" := CurrentDateTime();
                        OrdersRec."Delivery Date" := CurrentDateTime() + 7;
                        OrdersRec."Status" := 'Pending';
                        OrdersRec.Insert();
                        Message('Order has been generated.');
                    end else
                        Message('Quantity is above the threshold. No order generated.');
                end;
            }
        }
    }

    trigger OnOpenPage()
    begin
        Rec.Reset();
    end;
}
