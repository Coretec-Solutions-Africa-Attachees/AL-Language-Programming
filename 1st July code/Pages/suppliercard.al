page 50120 "Supplier Card"
{
    PageType = Card;
    SourceTable = Supplier;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'New Supplier';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Name"; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field("Contact Info"; Rec."Contact Info")
                {
                    ApplicationArea = All;
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                }
                field(Phone; Rec.Phone)
                {
                    ApplicationArea = All;
                }
                field("Account Balance"; Rec."Account Balance")
                {
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
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
            action("Save Supplier")
            {
                ApplicationArea = All;
                Caption = 'Save Supplier';
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    Rec.Insert();
                    CurrPage.Close();
                end;
            }
        }
    }
}
