// This page will display the records in the table extension inputted via the page defined in file PageExtension1.al i.e the 'Next Of Kin Page'

page 50102 "Next Of Kin List"
{
    PageType = List;
    SourceTable = Customer;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Full Name"; Rec."Full Name")
                {
                    ApplicationArea = All;
                    Caption = 'Full Name';
                }

                field("ID Or Birth Cert"; Rec."ID Or Birth Cert")
                {
                    ApplicationArea = All;
                    Caption = 'ID Or Birth Cert';
                }

                field("Date Of Birth"; Rec."Date Of Birth")
                {
                    ApplicationArea = All;
                    Caption = 'Date Of Birth';
                }

                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                    Caption = 'Gender';
                }

                field(Phone; Rec.Phone)
                {
                    ApplicationArea = All;
                    Caption = 'Phone';
                }

                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                    Caption = 'Email';
                }

                field(Location_Address; Rec.Location_Address)
                {
                    ApplicationArea = All;
                    Caption = 'Location Address';
                }

            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Delete All Records!")
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    CustomerRec: Record Customer;
                begin
                    if Dialog.Confirm('Are you sure you want to delete all records?') then
                        if CustomerRec.FindSet() then begin
                            repeat
                                CustomerRec."Full Name" := '';
                                CustomerRec."ID Or Birth Cert" := '';
                                CustomerRec."Date Of Birth" := 0D;
                                CustomerRec.Gender := CustomerRec.Gender::" ";
                                CustomerRec.Phone := '';
                                CustomerRec.Email := '';
                                CustomerRec.Location_Address := '';
                                CustomerRec.Modify();
                            until CustomerRec.Next() = 0;
                        end;
                    Message('All records have been deleted.');
                end;
            }
        }
    }
}