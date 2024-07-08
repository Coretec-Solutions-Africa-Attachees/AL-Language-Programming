report 50120 "Item List"
{
    ApplicationArea = All;
    Caption = 'Item List';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = 'ItemList.rdl';

    dataset
    {
        dataitem(Item; Item)
        {
            RequestFilterFields = "No.", "Search Description", "Inventory Posting Group";
            column(No_; "No.")
            {
                IncludeCaption = true;
            }
            column(Description; Description)
            {
                IncludeCaption = true;
            }
            column(Inventory; Inventory)
            {
                IncludeCaption = true;
            }
            column(Unit_Cost; "Unit Cost")
            {
                IncludeCaption = true;
            }
            column(Unit_Price; "Unit Price")
            {
                IncludeCaption = true;
            }
            column(Inventory_Posting_Group; "Inventory Posting Group")
            {
                IncludeCaption = true;
            }
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(ShowUnitCost; ShowUnitCost)
                    {
                        ApplicationArea = All;
                        Caption = 'Show Unit Cost';
                    }
                    field(ShowUnitPrice; ShowUnitPrice)
                    {
                        ApplicationArea = All;
                        Caption = 'Show Unit Price';
                    }
                }
            }
        }
    }

    var
        ShowUnitCost: Boolean;
        ShowUnitPrice: Boolean;

    trigger OnPreReport()
    begin
        if not ShowUnitCost then
            Item.SetRange("Unit Cost");
        if not ShowUnitPrice then
            Item.SetRange("Unit Price");
    end;
}