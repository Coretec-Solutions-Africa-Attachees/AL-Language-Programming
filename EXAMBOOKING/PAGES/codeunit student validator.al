codeunit 50106 "Student Validator"
{
    //Caption = 'Student Validator';

    procedure ValidateStudentDetails(Student: Record Student): Boolean
    var
        ErrorMessage: Text;
        IsValid: Boolean;
    begin
        IsValid := true;

        if not ValidateStudentID(Student."Student ID", ErrorMessage) then begin
            Message(ErrorMessage);
            IsValid := false;
        end;

        if not ValidateEmail(Student.Email, ErrorMessage) then begin
            Message(ErrorMessage);
            IsValid := false;
        end;

        if not ValidatePassword(Student.Password, ErrorMessage) then begin
            Message(ErrorMessage);
            IsValid := false;
        end;

        if not ValidateBalance(Student.Balance, ErrorMessage) then begin
            Message(ErrorMessage);
            IsValid := false;
        end;

        if IsValid then
            ConfirmSuccess();

        exit(IsValid);
    end;

    procedure ValidateStudentID(StudentID: Integer; var ErrorMessage: Text): Boolean
    begin
        if StudentID <= 0 then begin
            ErrorMessage := 'Student ID must be greater than 0.';
            exit(false);
        end;
        exit(true);
    end;

    procedure ValidateEmail(Email: Text; var ErrorMessage: Text): Boolean
    begin
        if (StrPos(Email, '@') = 0) or (StrPos(Email, '.') = 0) then begin
            ErrorMessage := 'Invalid email format.';
            exit(false);
        end;
        exit(true);
    end;

    procedure ValidatePassword(Password: Text; var ErrorMessage: Text): Boolean
    begin
        if StrLen(Password) < 6 then begin
            ErrorMessage := 'Password must be at least 6 characters long.';
            exit(false);
        end;
        exit(true);
    end;

    procedure ValidateBalance(Balance: Decimal; var ErrorMessage: Text): Boolean
    begin
        if Balance < 0 then begin
            ErrorMessage := 'Balance cannot be negative.';
            exit(false);
        end;
        exit(true);
    end;

    procedure ConfirmSuccess()
    begin
        Message('All details are valid. You may now continue.');
    end;
}
