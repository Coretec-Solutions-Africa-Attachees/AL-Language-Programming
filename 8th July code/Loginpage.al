page 50117 LoginPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Inventory Management Login';

    layout
    {
        area(Content)
        {
            group(LoginGroup)
            {
                Caption = 'Login Information';
                field(SelectedUser; SelectedUser)
                {
                    ApplicationArea = All;
                    Caption = 'Select User 👤';
                    TableRelation = CustomUser.Name;
                    Lookup = true;
                    Style = StrongAccent;
                    StyleExpr = true;

                    trigger OnValidate()
                    var
                        CustomUser: Record CustomUser;
                    begin
                        if CustomUser.Get(SelectedUser) then
                            CompanyName := CustomUser.CompanyName;
                    end;
                }
                field(CompanyName; CompanyName)
                {
                    ApplicationArea = All;
                    Caption = 'Company Name 🏢';
                    TableRelation = CustomUser.CompanyName;
                    Lookup = true;
                    Editable = false;
                    Style = Attention;
                    StyleExpr = true;
                }
                field(Password; Password)
                {
                    ApplicationArea = All;
                    Caption = 'Password 🔒';
                    ExtendedDatatype = Masked;
                    Style = Strong;
                    StyleExpr = true;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Login)
            {
                ApplicationArea = All;
                Caption = 'Login 🚀';
                Image = EntriesList;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                var
                    CustomUser: Record CustomUser;
                    HomePage: Page HomePage;
                begin
                    if CustomUser.Get(SelectedUser) then begin
                        if CustomUser.Password = Password then begin
                            Message('Login Successful! Welcome, %1! 🎉', CustomUser.Name);
                            Commit();
                            Clear(HomePage);
                            HomePage.SetLoggedInUser(CustomUser.Name, CustomUser.CompanyName);
                            HomePage.Run();
                        end else
                            Error('Invalid password. Please try again. 🔐');
                    end else
                        Error('User not found. Please select a valid user. 🧐');
                end;
            }
        }
    }

    var
        SelectedUser: Text[50];
        CompanyName: Text[100];
        Password: Text[50];
}