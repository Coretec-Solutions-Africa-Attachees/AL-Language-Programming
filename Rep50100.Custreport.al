report 50101 "Cust report"
{
    ApplicationArea = All;
    Caption = 'Cust report';
    UsageCategory = ReportsAndAnalysis;
    ExcelLayout = 'repo.xlsx';
    DefaultLayout = Excel;
    dataset
    {
        dataitem(Customer; Customer)
        {
            column(Name; Name)
            {
            }
            column(Address; Address)
            {
            }
            column(Balance; Balance)
            {
            }
            column(City; City)
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
