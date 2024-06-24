report 50101 "Customer report"
{
    ApplicationArea = All;
    Caption = 'Customer report';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = 'CUSTOMER.RDLC';
    DefaultLayout = RDLC;
    dataset
    {
        dataitem(Customer; Customer)
        {
            column(Name; Name)
            {
            }
            column(Amount; Amount)
            {
            }
            column(Contact; Contact)
            {
            }
            column(County; County)
            {
            }
            column(EMail; "E-Mail")
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
