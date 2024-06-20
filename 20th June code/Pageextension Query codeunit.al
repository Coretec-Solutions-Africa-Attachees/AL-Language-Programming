pageextension 50107 SalesCustomer extends "Sales Order"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addafter(AssemblyOrders)
        {
            action("Customer Sales Quantity")
            {
                ApplicationArea = All;
                Caption = 'Customer Details';
                Image = Customer;
                Promoted = true;
                PromotedCategory = New;

                trigger OnAction()
                var
                    MyCodeunit: Codeunit 50107;
                begin
                    Clear(MyCodeunit);
                    MyCodeunit.Run();
                end;
            }
        }
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}