report 50101 "Vendor report"
{
    ApplicationArea = All;
    Caption = 'Vendor report';
    UsageCategory = ReportsAndAnalysis;

    ExcelLayout = 'Vendor Report.xlsx';
    DefaultLayout = Excel;

    dataset
    {
        dataitem(Vendor; Vendor)
        {
            column(Name; Name)
            {
            }
            column(City; City)
            {
            }
            column(Payments; Payments)
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
