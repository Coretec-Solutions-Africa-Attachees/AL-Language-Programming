report 50115 "Client Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    // Specifying the layout as excel
    ExcelLayout = 'ClientReport.xlsx'; // This file is automatically  created in BC
    DefaultLayout = Excel;

    // DataItems
    dataset
    {
        dataitem(ClientTable; "ClientTable")
        {
            // RequestFilterFields = Phone;
            column(FirstName; "First Name")
            {
            }
            column(MiddleName; "Middle Name")
            {
            }

            column(LastName___Surname; "Last Name / Surname")
            {
            }

            column(Email; Email)
            {
            }

            column(Phone; Phone)
            {
            }

            column(AccountBalance; "Account Balance")
            {
            }

            dataitem(DepositTable; "DepositTable")
            {
                //DataItemTableView = sorting("Deposit ID");
                DataItemLink = Phone = field(Phone);
                column(DepositID; "Deposit ID")
                {
                }
                // column(ClientPhone; Phone)
                // {
                // }
                column(DepositAmount; "Deposit Amount")
                {
                }
                column(DepositDate; "Deposit Date")
                {
                }
            }

            dataitem(WithdrawTable; "WithdrawTable")
            {
                //DataItemTableView = sorting("Deposit ID");
                DataItemLink = Phone = field(Phone);
                column(WithdrawID; "Withdraw ID")
                {
                }
                // column(ClientPhone; Phone)
                // {
                // }
                column(WithdrawAmount; "Withdraw Amount")
                {
                }
                column(WithdrawDate; "Withdraw Date")
                {
                }
            }
        }

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
}