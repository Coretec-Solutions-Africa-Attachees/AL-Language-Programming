page 50126 "Inventory List Part"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Item;
    Caption = 'Top 10 Items';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    StyleExpr = ItemStyle;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    StyleExpr = ItemStyle;
                }
                field(Inventory; Rec.Inventory)
                {
                    ApplicationArea = All;
                    StyleExpr = ItemStyle;
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        Rec.SetRange("No.");
        Rec.SetCurrentKey(Inventory);
        Rec.Ascending(false);
        Rec.SetRange("No.");
        if Rec.FindSet() then;
    end;

    trigger OnAfterGetRecord()
    begin
        if Rec.Inventory <= 10 then
            ItemStyle := 'Unfavorable'
        else if Rec.Inventory > 50 then
            ItemStyle := 'Favorable'
        else
            ItemStyle := 'Ambiguous';
    end;

    var
        ItemStyle: Text;
}