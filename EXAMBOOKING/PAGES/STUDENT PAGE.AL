page 50100 "Student Card"
{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = Student;

    layout
    {
        area(Content)
        {
            group("FILL IN DETAILS")
            {
                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                }
                field(Password; Rec.Password)
                {
                    ApplicationArea = All;
                }
                field(Balance; Rec.Balance)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Validate Details")
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    StudentValidator: Codeunit "Student Validator";
                begin
                    if StudentValidator.ValidateStudentDetails(Rec) then
                        Message('All details are valid. You may now continue.')
                    else
                        Error('Some details are invalid. Please correct the errors and try again.');
                end;
            }

            action("Validate and Continue")
            {
                ApplicationArea = All;
                Caption = 'Validate and Continue';

                trigger OnAction()
                var
                    StudentNavigation: Codeunit "Student Navigation";
                begin
                    StudentNavigation.ValidateAndNavigate(Rec);
                end;
            }
        }
    }

    var
        myInt: Integer;
}
