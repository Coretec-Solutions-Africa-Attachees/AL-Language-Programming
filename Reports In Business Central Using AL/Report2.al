//Code below creates a report using a Excel layout
report 50108 "Customer Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    // Specifying the layout as excel
    ExcelLayout = 'Customer Report.xlsx'; // This file is automatically  created in BC
    DefaultLayout = Excel;

    // DefaultRenderingLayout = LayoutName;

    dataset
    {
        dataitem(Customer; Customer)
        {
            column(Contact; Contact)
            {

            }

            column(Address; Address)
            {

            }

            column(City; City)
            {

            }

            column(Balance; Balance)
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
                    // field(Name; SourceExpression)
                    // {
                    //     ApplicationArea = All;

                    // }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    // rendering
    // {
    //     layout(LayoutName)
    //     {
    //         Type = Excel;
    //         LayoutFile = 'mySpreadsheet.xlsx';
    //     }
    // }

    var
        myInt: Integer;
}