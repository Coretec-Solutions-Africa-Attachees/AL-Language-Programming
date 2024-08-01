codeunit 50111 "PaymentDateFiller"
{
    trigger OnRun()
    begin
        // Empty trigger as we won't run anything directly from this codeunit
    end;

    procedure AutoFillPaymentDate(var PaymentRec: Record "payment table")
    begin
        // Set the Payment Date to the current date and time
        PaymentRec."Payment Date" := CURRENTDATETIME;
    end;
}
