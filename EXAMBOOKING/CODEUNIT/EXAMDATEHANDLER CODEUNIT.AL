codeunit 50109 "Exam Date Handler"
{
    //Caption = 'Exam Date Handler';

    procedure ValidateAndStoreExamDate(StudentID: Integer; ExamName: Text[100]; ExamDate: Date): Boolean
    var
        ExamBooking: Record "Exam Booking";
        IsDateValid: Boolean;
    begin
        // Validate the Exam Date
        IsDateValid := ValidateExamDate(ExamDate);
        if not IsDateValid then begin
            Error('The Exam Date is invalid. It must be today or a future date.');
            exit(false);
        end;

        // Initialize the ExamBooking record
        ExamBooking.Init();
        ExamBooking."Student ID" := StudentID;
        ExamBooking."Exam Name" := ExamName;
        ExamBooking."Exam Date" := CurrentDateTime();
        ExamBooking.Status := ExamBooking.Status::Pending;

        // Insert the ExamBooking record
        ExamBooking.Insert();
        Message('Exam booking configured and stored successfully.');
        exit(true);
    end;

    local procedure ValidateExamDate(ExamDate: date): Boolean
    begin
        if ExamDate < Today then
            exit(false);
        exit(true);
    end;
}
