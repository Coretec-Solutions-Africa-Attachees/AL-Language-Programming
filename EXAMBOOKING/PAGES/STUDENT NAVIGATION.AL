codeunit 50108 "Student Navigation"
{
    //Caption = 'Student Navigation';

    procedure ValidateAndNavigate(Student: Record Student): Boolean
    var
        StudentValidator: Codeunit "Student Validator";
        ExamBooking: Record "Exam Booking";
    begin
        if StudentValidator.ValidateStudentDetails(Student) then begin
            Message('All details are valid. Redirecting to exam booking page.');
            // Create a new exam booking record for the student and navigate to the ExamBookingCard page
            ExamBooking.Init();
            ExamBooking."Student ID" := Student."Student ID";
            ExamBooking.Insert(true);
            PAGE.Run(PAGE::"ExamBookingCard", ExamBooking);
            exit(true);
        end else begin
            Error('Some details are invalid. Please correct the errors and try again.');
            exit(false);
        end;
    end;
}
