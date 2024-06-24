report 50100 "object report"
{
    ApplicationArea = All;
    Caption = 'object report';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = 'report.RDLC';
    DefaultLayout = RDLC;
    dataset
    {
        dataitem(Item; Item)
        {
            column(PriceUnitConversion; "Price Unit Conversion")
            {
            }
            column(Profit; "Profit %")
            {
            }
            column(QtyinTransit; "Qty. in Transit")
            {
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
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
}
