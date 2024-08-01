page 50101 ExamBookingCard
{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = "Exam Booking";

    layout
    {
        area(Content)
        {
            group("YOU  CANNOT EDIT THIS SECTION")
            {
                field("Booking ID"; Rec."Booking ID")
                {
                    ApplicationArea = All;
                }
                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                }
            }
            group("FILL IN THIS SECTION")
            {
                field("Exam Name"; Rec."Exam Name")
                {
                    ApplicationArea = All;
                }
                field("Exam Date"; Rec."Exam Date")
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
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
            action("Go to Payment")
            {
                ApplicationArea = All;
                Caption = 'Go to Payment';

                trigger OnAction()
                var
                    PaymentCodeunit: Codeunit "Exam Payment Codeunit";
                begin
                    if PaymentCodeunit.ValidateAndRunPayment(Rec) then
                        Message('Payment process initiated successfully.')
                    else
                        Message('Payment process failed.');
                end;
            }
        }
    }
}
