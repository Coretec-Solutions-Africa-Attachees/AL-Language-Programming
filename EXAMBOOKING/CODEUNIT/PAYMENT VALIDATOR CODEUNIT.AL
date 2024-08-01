codeunit 50113 "Payment Management"
{
    procedure InsertPayment(StudentID: Integer; BookingID: Integer; ExamName: Text[100]; PaymentAmount: Integer; PaymentMethod: Option; Currency: Option; PaymentDate: Date): Boolean
    var
        PaymentRec: Record "payment table";
    begin
        // Initialize the Payment record
        PaymentRec.Init();
        PaymentRec."Student ID" := StudentID;
        PaymentRec."Booking ID" := BookingID;
        PaymentRec."Exam Name" := ExamName;
        PaymentRec."Payment Amount" := PaymentAmount;
        PaymentRec."Payment Method" := PaymentMethod;
        PaymentRec."Currency" := Currency;
        PaymentRec."Payment Date" := CurrentDateTime;

        // Generate Transaction ID (if needed)
        // Example: PaymentRec."Transcation ID" := GenerateTransactionID();

        // Insert the Payment record
        PaymentRec.Insert(true);

        exit(true);
    end;

    procedure UpdatePayment(TranscationID: Integer; PaymentAmount: Integer; PaymentStatus: Option): Boolean
    var
        PaymentRec: Record "payment table";
    begin
        // Find the Payment record by Transaction ID
        if not PaymentRec.Get(TranscationID) then begin
            Error('Payment record with Transaction ID %1 not found.', TranscationID);
        end;

        // Update Payment record fields
        PaymentRec."Payment Amount" := PaymentAmount;
        PaymentRec."Payment Status" := PaymentStatus;

        // Modify the Payment record
        PaymentRec.Modify(true);

        exit(true);
    end;

    procedure GetPaymentDetails(TranscationID: Integer): Record "payment table"
    var
        PaymentRec: Record "payment table";
    begin
        // Find and return the Payment record by Transaction ID
        if not PaymentRec.Get(TranscationID) then begin
            Error('Payment record with Transaction ID %1 not found.', TranscationID);
        end;

        exit(PaymentRec);
    end;

    procedure GetPaymentDate(PaymentDate: DateTime): Record "payment table"
    var
        myInt: Integer;
    begin

    end;

    // Optional: Generate a unique Transaction ID if needed
    // procedure GenerateTransactionID(): Integer
    // begin
    //     // Generate and return a unique Transaction ID
    // end;
}
