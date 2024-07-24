report 50117 "Client Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    // Specifying the layout as excel
    ExcelLayout = 'ClientReport.xlsx'; // This file is automatically  created in BC
    DefaultLayout = Excel;

    // DataItems
    dataset
    {
        dataitem(ClientReportTable; "ClientReportTable")
        {
            column(No; ReportID)
            {
            }

            column(Deposit_ID; "Deposit ID")
            {
            }

            column(Deposit_Amount; "Deposit Amount")
            {
            }

            column(C1_______________________________; Column1)
            {
            }

            column(Withdraw_ID; "Withdraw ID")
            {
            }

            column(Withdraw_Amount; "Withdraw Amount")
            {
            }
            column(New_Balance; "New__Balance")
            {
            }
            column(Transaction_Date; "Date")
            {
            }
        }
    }

    requestpage
    {
        layout
        {

        }
        trigger OnOpenPage();
        begin
            ClientReportCodeunit.DepositInfo();
            ClientReportCodeunit.WithdrawInfo();
        end;
    }

    var
        SharedVariablesCodeunit: Codeunit "SharedVariablesCodeunit";
        ClientReportCodeunit: Codeunit "ClientReportCodeunit";
}