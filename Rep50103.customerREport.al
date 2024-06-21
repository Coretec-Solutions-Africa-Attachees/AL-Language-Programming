report 50103 "customer REport"
{
    ApplicationArea = All;
    Caption = 'customer REport';
    UsageCategory = ReportsAndAnalysis;
    WordLayout = 'report.docx';
    DefaultLayout = Word;
    dataset
    {
        dataitem(CustomerAmount; "Customer Amount")
        {
            column(AmountLCY; "Amount (LCY)")
            {
            }
            column(CustomerNo; "Customer No.")
            {
            }
            column(SystemModifiedAt; SystemModifiedAt)
            {
            }
            column(SystemModifiedBy; SystemModifiedBy)
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
