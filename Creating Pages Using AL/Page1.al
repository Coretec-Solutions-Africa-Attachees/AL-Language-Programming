//check changes made to the launch.json file (located in this file's folder) while creating a page using AL code below

//a page basically facilitates interaction between the user and the application

//page id should be same as table it is linked to

page 50101 "Employee Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Employee_;

    layout
    {
        area(Content)
        {
            group("Employee Information")
            {
                //the primary key is not in this category because the user does not need to insert it

                field("Employee Name"; Rec."Employee Name")
                {
                    ApplicationArea = All;
                }

                field("Date Of Birth"; Rec."Date Of Birth")
                {
                    ApplicationArea = All;
                }

                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                }

                field("Remote Work Status"; Rec."Remote Work Status")
                {
                    ApplicationArea = All;
                }

            }
        }
    }


    //showing a simple action
    actions
    {
        area(Processing)
        {
            action("Click Here!")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Message('Welcome To This Page!');
                end;
            }
        }
    }

    var
        myInt: Integer;
}