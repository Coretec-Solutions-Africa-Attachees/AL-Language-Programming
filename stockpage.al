//check changes made to the launch.json file (located in this file's folder) while creating a page using AL code below

//a page basically facilitates interaction between the user and the application

//page id should be same as table it is linked to

page 50110 "Stock Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Stock_;

    layout
    {
        area(Content)
        {
            group("Stock Information")
            {
                //the primary key is not in this category because the user does not need to insert it

                field("product Name"; Rec."product Name")
                {
                    ApplicationArea = All;
                }

                field("Date purchased"; Rec."Date purchased")
                {
                    ApplicationArea = All;
                }

                field(brand; Rec.brand)
                {
                    ApplicationArea = All;
                }

                field("price"; Rec."price")
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
