// Check changes made to the launch.json file (located in this file's folder) while creating a report using AL code below

//Reports display information from a database; also analyze, structure and summarize the information

//Code below creates a report using a word layout
report 50107 "Customer Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    // Specifying the layout as word; layout can also be specified in Excel
    WordLayout = 'Customer Report.docx'; // This file is automatically  created by BC
    DefaultLayout = Word;

    // DefaultRenderingLayout = LayoutName;

    dataset
    {
        dataitem(Customer; Customer)
        {
            column(Full_Name; "Full Name")
            {

            }

            column(Contact; Contact)
            {

            }

            column(E_Mail; "E-Mail")
            {

            }

            column(Date_Of_Birth; "Date Of Birth")
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