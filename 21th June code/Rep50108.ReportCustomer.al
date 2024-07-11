report 50108 "Report Customer"
{
    ApplicationArea = All;
    Caption = 'Report Customer';
    UsageCategory = ReportsAndAnalysis;
    WordLayout = 'Customer Report.docx';
    DefaultLayout = Word;

    dataset
    {
        dataitem(Customer; Customer)
        {
            column(Name; "Name 2")
            {
            }
            column(City; City)
            {
            }
            column(Balance; Balance)
            {
            }
            column(ContactID; "Contact ID")
            {
            }
            column(Phone_No_; "Phone No.")
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
