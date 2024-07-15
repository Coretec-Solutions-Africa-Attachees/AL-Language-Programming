page 50102 "Employee List page"
{
    PageType = List;
    SourceTable = "Employee Table";
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Employee ID"; Rec."Employee ID")
                {
                }
                field("First Name"; Rec."First Name")
                {
                }
                field("Last Name"; Rec."Last Name")
                {
                }
                field("Email"; Rec."Email")
                {
                }
                field("Phone"; Rec."Phone")
                {
                }
                field("Job Title"; Rec."Job Title")
                {
                }
                field("Date Hired"; Rec."Date Hired")
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(CreateEmployee)
            {
                Caption = 'Create Employee';
                trigger OnAction()
                begin
                    // Code to create a new employee
                end;
            }
        }
    }
}
