page 50110 "Log In"
{
    PageType = Card;
    UsageCategory = Administration;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group("Log In  Details:")
            {
                field("Log In ID"; 'Log In ID')
                {
                    ApplicationArea = All;
                    Caption = 'Log In ID';
                    Editable = false;
                }
            }
            group("Enter Your Phone Number:")
            {
                field("Phone"; Phone)
                {
                    ApplicationArea = All;
                    Caption = '  ';
                }
            }

            group("Enter your Password:")
            {
                field("Password"; Password)
                {
                    ApplicationArea = All;
                    Caption = '  ';
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Create Account")
            {
                Caption = 'Go To ''Create Account'' Instead';
                ToolTip = 'If you don''t have an account, click here';
                Image = GoTo;
                // ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true; // Makes the button large
                PromotedOnly = true;  // Ensures the button appears without lines when set to true
                trigger OnAction()
                begin
                    Page.Run(50109);
                    CurrPage.Close();
                end;
            }

            action("Log In")
            {
                Caption = 'Log In';
                Image = Customer;
                // ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true; // Makes the button large
                PromotedOnly = true;  // Ensures the button appears without lines when set to true
                trigger OnAction()
                begin
                    LogInCodeUnit.LogIn(Phone, Password);
                    CurrPage.Close();
                end;
            }
        }
    }

    trigger OnClosePage();
    begin

    end;

    var
        LogInCodeUnit: Codeunit "LogInCodeUnit";
        Password: Text[100];
        Phone: Text[20];
}