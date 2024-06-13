//Check changes made to the launch.json file (located in this file's folder) while creating a page using AL code below

//A page basically facilitates interaction between the user and the application

//Page id should be same as table it is linked to

page 50101 "Employee Page"
{
    PageType = Card; // You can use page type 'list' to view and edit the data of all the records
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Employee_;
    Caption = 'Employee Page';

    layout
    {
        area(Content)
        {
            // 'repeater(Group)' - if page type is list; use this
            group("Employee Information")
            {
                //The primary key is not compulsory in this category because the user does not need to insert it
                field("Employee ID"; Rec."Employee ID")
                {
                    ApplicationArea = All;
                    Caption = 'Employee ID (Not Editable)';
                    Editable = false; // Disabling the ability of ID to be edited
                }
                group("Employee Name")
                {
                    field("First Name"; Rec."First Name")
                    {
                        ApplicationArea = All;
                        Caption = 'First Name';
                    }

                    field("Middle Name"; Rec."Middle Name")
                    {
                        ApplicationArea = All;
                        Caption = 'Middle Name';
                    }

                    field("Last Name / Surname"; Rec."Last Name / Surname")
                    {
                        ApplicationArea = All;
                        Caption = 'Last Name / Surname';
                    }
                }

                group("Date Of Birth")
                {
                    field("DateOfBirth"; Rec."Date Of Birth")
                    {
                        ApplicationArea = All;
                        Caption = '  ';
                    }
                }

                group("Gender")
                {
                    field(Gender_; Rec.Gender)
                    {
                        ApplicationArea = All;
                        Caption = '  ';
                    }

                }
            }

            group("Employee Contacts")
            {
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                    Caption = 'Email';
                }

                field(Phone; Rec.Phone)
                {
                    ApplicationArea = All;
                    Caption = 'Phone';
                }
            }

            group("Employee Work Information")
            {
                field("Remote Work Status"; Rec."Remote Work Status")
                {
                    ApplicationArea = All;
                    Caption = 'Remote Work Status';
                }
            }
        }
    }


    //Showing a simple action
    actions
    {
        area(processing)
        {
            action("Delete All Records!")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    //The line below asks for confirmation to delete all records
                    if Dialog.Confirm('Are you sure you want to delete all records?') then
                        // The line of code below deletes all rows (records) in the table placed in the variable
                        Table1.DeleteAll();
                    Message('You Have Deleted All Records!');
                end;
            }
        }
    }

    var
        Table1: Record "Employee_";
}