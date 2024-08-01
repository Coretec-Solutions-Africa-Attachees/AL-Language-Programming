codeunit 50102 "Exam Payment Codeunit"
{
    procedure ValidateAndRunPayment(var BookingRec: Record "Exam Booking"): Boolean
    var
        PaymentRec: Record "payment table";
    begin
        // Perform validation
        if BookingRec.Status <> BookingRec.Status::Confirmed then begin
            Error('Exam booking is not confirmed.');
        end;

        // Initialize a new payment record
        PaymentRec.Init();
        PaymentRec."Booking ID" := BookingRec."Booking ID";
        PaymentRec."Student ID" := BookingRec."Student ID";
        PaymentRec."Exam Name" := BookingRec."Exam Name";

        // Insert the new payment record
        PaymentRec.Insert(true);

        // Open the Payment page with the new payment record
        PAGE.Run(PAGE::"Payment", PaymentRec);

        exit(true);
    end;
}
