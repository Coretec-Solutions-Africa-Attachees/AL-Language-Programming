page 50101 "Employee Page"
{
    PageType = List;
    SourceTable = Employe;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Employee List';

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Employee ID"; Rec."EmployeeID")
                {
                    ApplicationArea = All;
                    Caption = 'Employee ID';
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

                field("Position"; Rec."Position")
                {
                    ApplicationArea = All;
                    Caption = 'Position';
                }

                field("Department"; Rec."Department")
                {
                    ApplicationArea = All;
                    Caption = 'Department';
                }

                field("Email"; Rec."Email Address")
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
            action(DeleteRecord)
            {
                Caption = 'Delete';
                Image = Delete;
                Promoted = true;
                PromotedIsBig = true;
                PromotedOnly = true;

                trigger OnAction()
                begin
                    if Dialog.Confirm('Are you sure you want to delete this record?') then
                        Rec.Delete();
                end;
            }
        }
    }
}
