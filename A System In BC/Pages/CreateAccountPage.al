page 50109 "Create Account"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            group("Client Information")
            {
                //The primary key is not compulsory in this category because the user does not need to insert it
                field("Client ID"; 'Client ID')
                {
                    ApplicationArea = All;
                    Caption = 'Client ID (Not Editable)';
                    Editable = false; // Disabling the ability of ID to be edited
                }
                group("Client Name")
                {
                    field("First Name"; FirstName)
                    {
                        ApplicationArea = All;
                        Caption = 'First Name';
                    }

                    field("Middle Name"; MiddleName)
                    {
                        ApplicationArea = All;
                        Caption = 'Middle Name';
                    }

                    field("Last Name / Surname"; LastNameSurname)
                    {
                        ApplicationArea = All;
                        Caption = 'Last Name / Surname';
                    }
                }

                group("Date Of Birth")
                {
                    field("DateOfBirth"; DateOfBirth)
                    {
                        ApplicationArea = All;
                        Caption = '  ';
                    }
                }

                group("Gender")
                {
                    field(Gender_; Gender)
                    {
                        ApplicationArea = All;
                        Caption = '  ';
                    }

                }
            }

            group("Client's Contacts")
            {
                field(Email; Email)
                {
                    ApplicationArea = All;
                    Caption = 'Email';
                }

                field(Phone; Phone)
                {
                    ApplicationArea = All;
                    Caption = 'Phone';
                }
            }

            group("Client's Password")
            {
                field("Password"; Password)
                {
                    ApplicationArea = All;
                    Caption = 'Password';
                }
            }

            group("Account Balance")
            {
                field("Balance"; AccountBalance)
                {
                    ApplicationArea = All;
                    Caption = '  ';
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Log In")
            {
                Caption = 'Go To ''Log In'' Instead';
                ToolTip = 'If you already have an account, click here';
                Image = GoTo;
                // ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true; // Makes the button large
                PromotedOnly = true;  // Ensures the button appears without lines when set to true
                trigger OnAction()
                begin
                    Page.Run(50110);
                    CurrPage.Close();
                end;
            }

            action("Create Account")
            {
                Caption = 'Create Account';
                Image = Customer;
                // ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;
                trigger OnAction()
                begin
                    CreateAccountCodeunit.InsertData(FirstName, MiddleName, LastNameSurname, DateOfBirth, Gender, Email, Phone, AccountBalance, Password);
                    CurrPage.Close();
                end;
            }
        }
    }

    trigger OnClosePage()
    begin

    end;

    var
        CreateAccountCodeunit: Codeunit "CreateAccountCodeunit";
        FirstName: Text[30];
        MiddleName: Text[30];
        LastNameSurname: Text[30];
        DateOfBirth: Date;
        Gender: Enum "Option Enum";
        Email: Text[100];
        Phone: Text[20];
        AccountBalance: Decimal;
        Password: Text[100];