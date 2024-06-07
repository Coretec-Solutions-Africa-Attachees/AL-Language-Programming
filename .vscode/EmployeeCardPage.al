page 50101 "Employee Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Employe;
    Caption = 'Employee Card';

    layout
    {
        area(content)
        {
            group(Group)
            {
                Caption = 'General';

                field("Employee ID"; Rec."EmployeeID")
                {
                    ApplicationArea = All;
                    Caption = 'Employee ID';
                    Editable = false; // EmployeeID should not be editable
                }

                field("First Name"; Rec."FirstName")
                {
                    ApplicationArea = All;
                    Caption = 'First Name';
                }

                field("Last Name"; Rec."LastName")
                {
                    ApplicationArea = All;
                    Caption = 'Last Name';
                }

                field("Birth Date"; Rec."BirthDate")
                {
                    ApplicationArea = All;
                    Caption = 'Birth Date';
                }

                field("Position"; Rec."Position")
                {
                    ApplicationArea = All;
                    Caption = 'Position';
                }

                field("Hire Date"; Rec."HireDate")
                {
                    ApplicationArea = All;
                    Caption = 'Hire Date';
                }

                field("Department"; Rec."Department")
                {
                    ApplicationArea = All;
                    Caption = 'Department';
                }

                field("Email"; Rec."Email")
                {
                    ApplicationArea = All;
                    Caption = 'Email';
                }

                field("Phone Number"; Rec."PhoneNumber")
                {
                    ApplicationArea = All;
                    Caption = 'Phone Number';
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(SaveRecord)
            {
                Caption = 'Save';
                Image = Save;
                Promoted = true;
                PromotedIsBig = true;
                PromotedOnly = true;

                trigger OnAction()
                begin
                    Rec.Modify(true);
                end;
            }
        }
    }


    trigger OnOpenPage()
    begin
        // Custom logic when the page is opened
    end;

    trigger OnClosePage()
    begin
        // Custom logic when the page is closed
    end;

}
