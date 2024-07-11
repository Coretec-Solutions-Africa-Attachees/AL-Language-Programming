page 50124 "User Registration"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = CustomUser;

    layout
    {
        area(Content)
        {
            group(RegistrationForm)
            {
                ShowCaption = false;
                Editable = true;

                field(Name; Username)
                {
                    ApplicationArea = All;
                    Caption = 'Name 👤';
                    Style = StrongAccent;
                    StyleExpr = true;
                }

                field(Password; Password)
                {
                    ApplicationArea = All;
                    Caption = 'Password 🔒';
                    ExtendedDatatype = Masked;
                    Style = Attention;
                    StyleExpr = true;
                }

                field(Email; Email)
                {
                    ApplicationArea = All;
                    Caption = 'Email 📧';
                    Style = Favorable;
                    StyleExpr = true;
                }

                field(Role; Role)
                {
                    ApplicationArea = All;
                    Caption = 'Role 🎩';
                    Style = Ambiguous;
                    StyleExpr = true;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Register)
            {
                ApplicationArea = All;
                Caption = 'Register 🚀';
                Image = NewCustomer;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    Rec.Validate("Name", Username);
                    Rec.Validate("Password", Password);
                    // Rec.Validate("Email", Email);
                    // Rec.Validate("Role", Role);

                    if Rec.Get(Rec."Name") then
                        Message('A user with this username already exists. Please choose a different username.')
                    else begin
                        Rec.Insert();
                        Message('User registered successfully! 🎉');
                        CurrPage.Close();
                        PAGE.RUN(PAGE::"LoginPage"); // Redirect to the login page
                    end;
                end;
            }
        }
    }

    var
        Username: Text;
        Password: Text;
        Email: Text;
        Role: Option "Admin","User";
}
