//Check the changes made to the launch.json file (located in this file's folder) while creating a page extension

//For each table extension, it's page is also extended
pageextension 50102 "Next Of Kin Page" extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        //addafter //this adds your page after a content area
        //addbefore //this adds your page before a content area
        //addfirst //this adds your page 1st but within a content area
        //addlast //this adds your page last within a content area
        addafter(General)
        {
            group("Next Of Kin")
            {

                field("Full Name"; Rec."Full Name")
                {
                    ApplicationArea = All;
                }

                field("ID Or Birth Cert"; Rec."ID Or Birth Cert")
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

                field(Phone; Rec.Phone)
                {
                    ApplicationArea = All;
                }

                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                }

                field(Location_Address; Rec.Location_Address)
                {
                    ApplicationArea = All;
                }

            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}