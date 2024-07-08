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

            // column(Phone; Phone)
            // {
            // }

            column(Deposit_ID; "Deposit ID")
            {
            }
            // column(ClientPhone; Phone)
            // {
            // }
            column(Deposit_Amount; "Deposit Amount")
            {
            }

            column(C1_______________________________; Column1)
            {
            }

            column(Withdraw_ID; "Withdraw ID")
            {
            }
            // column(ClientPhone; Phone)
            // {
            // }
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

        // dataitem(ClientTable; "ClientTable")
        // {
        //     // DataItemTableView = where(Phone = const(SharedPhone));
        //     // RequestFilterFields = Phone;
        //     // column(FirstName; "First Name")
        //     // {
        //     // }
        //     // column(MiddleName; "Middle Name")
        //     // {
        //     // }

        //     // column(LastName___Surname; "Last Name / Surname")
        //     // {
        //     // }

        //     // column(Email; Email)
        //     // {
        //     // }

        //     column(Phone; VPhone)
        //     {
        //     }

        //     // column(AccountBalance; "Account Balance")
        //     // {
        //     // }

        //     dataitem(DepositTable; "DepositTable")
        //     {
        //         //DataItemTableView = sorting("Deposit ID");
        //         DataItemLink = Phone = field(Phone);
        //         column(DepositID; "VDeposit ID")
        //         {
        //         }
        //         // column(ClientPhone; Phone)
        //         // {
        //         // }
        //         column(DepositAmount; "VDeposit Amount")
        //         {
        //         }
        //         column(NewBalance; "VNew Balance")
        //         {
        //         }
        //         column(DepositDate; "VDeposit Date")
        //         {
        //         }
        //     }

        //     dataitem(WithdrawTable; "WithdrawTable")
        //     {
        //         //DataItemTableView = sorting("Deposit ID");
        //         DataItemLink = Phone = field(Phone);
        //         column(WithdrawID; "VWithdraw ID")
        //         {
        //         }
        //         // column(ClientPhone; Phone)
        //         // {
        //         // }
        //         column(WithdrawAmount; "VWithdraw Amount")
        //         {
        //         }
        //         column(New_Balance; "VNew__Balance")
        //         {
        //         }
        //         column(WithdrawDate; "VWithdraw Date")
        //         {
        //         }
        //     }
        // }

        // dataitem(ClientTable1; "ClientTable")
        // {
        //     // RequestFilterFields = Phone;
        //     column(First_Name; "First Name")
        //     {
        //     }
        //     column(Middle_Name; "Middle Name")
        //     {
        //     }

        //     column(LastName__Surname; "Last Name / Surname")
        //     {
        //     }

        //     column(Email_; Email)
        //     {
        //     }

        //     column(Phone_; Phone)
        //     {
        //     }

        //     dataitem(WithdrawTable; "WithdrawTable")
        //     {
        //         //DataItemTableView = sorting("Deposit ID");
        //         DataItemLink = Phone = field(Phone);
        //         column(WithdrawID; "Withdraw ID")
        //         {
        //         }
        //         // column(ClientPhone; Phone)
        //         // {
        //         // }
        //         column(WithdrawAmount; "Withdraw Amount")
        //         {
        //         }
        //         column(WithdrawDate; "Withdraw Date")
        //         {
        //         }
        //     }
        // }
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

            // Count := 0;
            // repeat
            //     Count += 1;
            //     VPhone := SharedVariablesCodeunit.GetSharedVariablePhone();
            //     "VDeposit ID" := ClientReportCodeunit.GetDepositID();
            //     "VDeposit Amount" := ClientReportCodeunit.GetDepositAmount();
            //     "VNew Balance" := ClientReportCodeunit.GetNewBalance();
            //     "VDeposit Date" := ClientReportCodeunit.GetDepositDate();
            //     "VWithdraw ID" := ClientReportCodeunit.GetWithdrawID();
            //     "VWithdraw Amount" := ClientReportCodeunit.GetWithdrawAmount();
            //     "VNew__Balance" := ClientReportCodeunit.GetNew__Balance();
            //     "VWithdraw Date" := ClientReportCodeunit.GetWithdrawDate();
            // until Count = 9;
            // Count1 := 0;
            // Count2 := 0;
            // VClientReportTable.DeleteAll();
            // repeat
            //     Count1 += 1;
            //     VClientReportTable.Init();
            //     VClientReportTable.ReportID := Count1;
            //     VClientReportTable.Phone := SharedVariablesCodeunit.GetSharedVariablePhone();
            //     VClientReportTable."Deposit ID" := ClientReportCodeunit.GetDepositID();
            //     VClientReportTable."Deposit Amount" := ClientReportCodeunit.GetDepositAmount();
            //     VClientReportTable."New Balance" := ClientReportCodeunit.GetNewBalance();
            //     VClientReportTable."Deposit Date" := ClientReportCodeunit.GetDepositDate();
            //     // VClientReportTable."Withdraw ID" := ClientReportCodeunit.GetWithdrawID();
            //     // VClientReportTable."Withdraw Amount" := ClientReportCodeunit.GetWithdrawAmount();
            //     // VClientReportTable.New__Balance := ClientReportCodeunit.GetNew__Balance();
            //     // VClientReportTable."Withdraw Date" := ClientReportCodeunit.GetWithdrawDate();
            //     VClientReportTable.Insert();
            // until Count1 = ClientReportCodeunit.GetRowcount1();

            // repeat
            //     Count1 += 1;
            //     Count2 += 1;
            //     VClientReportTable.Init();
            //     VClientReportTable.ReportID := Count1;
            //     VClientReportTable.Phone := SharedVariablesCodeunit.GetSharedVariablePhone();
            //     // VClientReportTable."Deposit ID" := ClientReportCodeunit.GetDepositID();
            //     // VClientReportTable."Deposit Amount" := ClientReportCodeunit.GetDepositAmount();
            //     // VClientReportTable."New Balance" := ClientReportCodeunit.GetNewBalance();
            //     // VClientReportTable."Deposit Date" := ClientReportCodeunit.GetDepositDate();
            //     VClientReportTable."Withdraw ID" := ClientReportCodeunit.GetWithdrawID();
            //     VClientReportTable."Withdraw Amount" := ClientReportCodeunit.GetWithdrawAmount();
            //     VClientReportTable.New__Balance := ClientReportCodeunit.GetNew__Balance();
            //     VClientReportTable."Withdraw Date" := ClientReportCodeunit.GetWithdrawDate();
            //     VClientReportTable.Insert();
            // until Count2 = ClientReportCodeunit.GetRowcount2();
        end;
    }

    var
        SharedVariablesCodeunit: Codeunit "SharedVariablesCodeunit";
        ClientReportCodeunit: Codeunit "ClientReportCodeunit";
    // VPhone: Text[20];
    // "VDeposit ID": Integer;
    // "VDeposit Amount": Decimal;
    // "VNew Balance": Decimal;
    // "VDeposit Date": DateTime;
    // "VWithdraw ID": Integer;
    // "VWithdraw Amount": Decimal;
    // "VNew__Balance": Decimal;
    // "VWithdraw Date": DateTime;
    // VClientReportTable: Record ClientReportTable;
    // Count1: Integer;
    // Count2: Integer;
}