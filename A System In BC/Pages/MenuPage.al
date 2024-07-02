page 50113 "Menu"
{
    PageType = Card;
    layout
    {
        // Define the page layout
        area(content)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action("Deposit")
            {
                Caption = 'Deposit';
                Image = Balance;
                // ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true; // Makes the button large
                PromotedOnly = true;  // Ensures the button appears without lines when set to true
                trigger OnAction()
                begin
                    Page.Run(50111);
                end;
            }

            action("Withdraw")
            {
                Caption = 'Withdraw';
                Image = Balance;
                // ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true; // Makes the button large
                PromotedOnly = true;  // Ensures the button appears without lines when set to true
                trigger OnAction()
                begin
                    Page.Run(50114);
                end;
            }

            action("Check Balance")
            {
                Caption = 'Check Balance';
                Image = Balance;
                // ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true; // Makes the button large
                PromotedOnly = true;  // Ensures the button appears without lines when set to true
                trigger OnAction()
                begin
                    CheckBalanceCodeunit.CheckBalance();
                end;
            }

            action(GenerateClientReport)
            {
                Caption = 'Generate Report';
                Image = Export;
                ToolTip = 'A report contains the history of your successful transactions';
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin

                end;
            }




            action("Log Out")
            {
                Caption = 'Log Out';
                Image = Absence;
                // ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true; // Makes the button large
                PromotedOnly = true;  // Ensures the button appears without lines when set to true
                trigger OnAction()
                begin
                    LogOutCodeunit.LogOut();
                    CurrPage.Close();
                end;
            }
        }
    }

    var
        CheckBalanceCodeunit: Codeunit "CheckBalanceCodeunit";
        LogOutCodeunit: Codeunit "LogOutCodeunit";
}