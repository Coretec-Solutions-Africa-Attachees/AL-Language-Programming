page 50103 "Employer List"
{
    PageType = List;
    SourceTable = "Employer Table";
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Employer ID"; Rec."Employer ID")
                {
                }
                field("Company Name"; Rec."Company Name")
                {
                }
                field("Contact Person"; Rec."Contact Person")
                {
                }
                field("Email"; Rec."Email")
                {
                }
                field("Phone"; Rec."Phone")
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(CreateEmployer)
            {
                Caption = 'Create Employer';
                trigger OnAction()
                begin
                    // Code to create a new employer
                end;
            }
        }
    }
}
