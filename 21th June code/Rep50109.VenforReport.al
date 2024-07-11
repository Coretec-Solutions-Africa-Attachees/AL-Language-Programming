report 50109 "Vendor Report"
{
    ApplicationArea = All;
    Caption = 'Venfor Report';
    UsageCategory = ReportsAndAnalysis;

    DefaultLayout = RDLC;
    RDLCLayout = './alpackages/Vendor Report.rdl';

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
            column(EMail; "E-Mail")
            {
            }
            column(PhoneNo; "Phone No.")
            {
            }
            column(Payments; Payments)
            {
            }

            trigger OnPreDataItem()
            begin

            end;

            trigger OnAfterGetRecord()
            begin

            end;

            trigger OnPostDataItem()
            begin

            end;
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
