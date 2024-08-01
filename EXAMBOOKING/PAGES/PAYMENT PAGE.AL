page 50102 payment
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "payment table";

    layout
    {
        area(Content)
        {
            group("YOU CANNOT EDIT THIS SECTION")
            {
                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;

                }
                field("Booking ID"; Rec."Booking ID")
                {
                    applicationArea = All;
                }
                field("Exam Name"; Rec."Exam Name")
                {
                    applicationArea = All;
                }
                field("Transcation ID"; Rec."Transcation ID")
                {
                    applicationArea = All;
                }
                field("Payment Date"; Rec."Payment Date")
                {
                    applicationArea = All;
                }
            }
            group("FILL IN  THIS SECTION CORRECTLY")
            {
                field("Payment Method"; Rec."Payment Method")
                {
                    applicationArea = All;
                }
                field(Currency; Rec.Currency)
                {
                    applicationArea = All;
                }
                field("Payment Amount"; Rec."Payment Amount")
                {
                    applicationArea = All;
                }

                field("Payment Status"; Rec."Payment Status")
                {
                    applicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}