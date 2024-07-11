page 50121 "Action Total Value"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;


    layout
    {
        area(Content)
        {

            group(Input)

            {
                Caption = 'Input';
                field(ItemNo; ItemNo)
                {
                    ApplicationArea = All;
                    ToolTip = 'Item Number';
                    Caption = 'Item Number';

                }
                field(Quantity; Quantity)
                {
                    ApplicationArea = All;
                    ToolTip = 'Quantity';
                    Caption = 'Quantity';
                }
                field(UnitPrice; UnitPrice)
                {
                    ApplicationArea = All;
                    ToolTip = 'Unit Price';
                    Caption = 'Unit Price';
                }
            }

            group(Output)

            {
                Caption = 'Output';
                field(TotalValue; TotalValue)
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Total Value of Inventory';
                    Caption = 'Total Value';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Calculate Inventory Value")
            {
                ApplicationArea = All;
                Caption = 'Calculate Inventory Value';
                Image = ExecuteBatch;
                ToolTip = 'Calculate the total value of the inventory';
                trigger OnAction()
                begin
                    TotalValue := Quantity * UnitPrice;
                    Message('The total value of inventory is %1', TotalValue);
                end;

            }
        }

    }

    var
        ItemNo: Code[20];
        Quantity: Decimal;
        UnitPrice: Decimal;

        TotalValue: Decimal;
}