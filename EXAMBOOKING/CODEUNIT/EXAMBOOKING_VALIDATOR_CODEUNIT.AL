codeunit 50103 "Exam Booking Validator"
{
    //Caption = 'Exam Booking Validator';

    procedure ValidateExamBookingDetails(ExamBooking: Record "Exam Booking"): Boolean
    var
        ErrorMessage: Text;
        IsValid: Boolean;
    begin
        IsValid := true;

        if not ValidateBookingID(ExamBooking."Booking ID", ErrorMessage) then begin
            Message(ErrorMessage);
            IsValid := false;
        end;

        if not ValidateStudentID(ExamBooking."Student ID", ErrorMessage) then begin
            Message(ErrorMessage);
            IsValid := false;
        end;

        if not ValidateExamName(ExamBooking."Exam Name", ErrorMessage) then begin
            Message(ErrorMessage);
            IsValid := false;
        end;

        if not ValidateExamDate(ExamBooking."Exam Date", ErrorMessage) then begin
            Message(ErrorMessage);
            IsValid := false;
        end;

        if not ValidateStatus(ExamBooking.Status, ErrorMessage) then begin
            Message(ErrorMessage);
            IsValid := false;
        end;

        exit(IsValid);
    end;

    procedure ValidateBookingID(BookingID: Integer; var ErrorMessage: Text): Boolean
    begin
        if BookingID <= 0 then begin
            ErrorMessage := 'Booking ID must be greater than 0.';
            exit(false);
        end;
        exit(true);
    end;

    procedure ValidateStudentID(StudentID: Integer; var ErrorMessage: Text): Boolean
    begin
        if StudentID <= 0 then begin
            ErrorMessage := 'Student ID must be greater than 0.';
            exit(false);
        end;
        exit(true);
    end;

    procedure ValidateExamName(ExamName: Text; var ErrorMessage: Text): Boolean
    begin
        if StrLen(ExamName) = 0 then begin
            ErrorMessage := 'Exam Name cannot be empty.';
            exit(false);
        end;
        exit(true);
    end;

    procedure ValidateExamDate(ExamDate: Date; var ErrorMessage: Text): Boolean
    begin
        if ExamDate < Today then begin
            ErrorMessage := 'Exam Date cannot be in the past.';
            exit(false);
        end;
        exit(true);
    end;

    procedure ValidateStatus(Status: Option; var ErrorMessage: Text): Boolean
    begin
        // Add your logic here if there are specific validations for the status field
        exit(true);
    end;
}

