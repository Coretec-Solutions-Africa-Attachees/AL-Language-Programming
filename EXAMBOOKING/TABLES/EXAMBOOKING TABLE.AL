table 50101 "Exam Booking"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Booking ID"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Booking ID';
            Editable = false;
            // Add additional properties and validation rules as needed
        }
        field(2; "Student ID"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Student ID';
            Editable = false;
            // Add additional properties and validation rules as needed
        }
        field(3; "Exam Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Exam Name';
            // Add additional properties and validation rules as needed
        }
        field(4; "Exam Date"; DateTime)
        {
            DataClassification = ToBeClassified;
            Caption = 'Exam Date';
            Editable = true;
            // Add additional properties and validation rules as needed
        }
        field(5; "Status"; Option)
        {
            DataClassification = ToBeClassified;
            Caption = 'Status';
            OptionMembers = "",Pending,Confirmed,Cancelled;
        }
    }

    keys
    {
        key(PK; "Booking ID")
        {
            Clustered = true;
        }
        key(Idx_StudentID; "Student ID")
        {
        }
    }

    trigger OnInsert()
    begin
        if "Booking ID" = 0 then
            "Booking ID" := GetNextBookingID();

    end;

    trigger OnModify()
    begin
        // if "Exam Date" = 0D then
        //"Exam Date" := WorkDate; // Ensure Exam Date is not zero on modification
    end;

    var
        NextBookingID: Integer;

    local procedure GetNextBookingID(): Integer
    var
        LastBookingID: Integer;
        BookingRec: Record "Exam Booking";
    begin
        if BookingRec.FindLast then
            LastBookingID := BookingRec."Booking ID";

        NextBookingID := LastBookingID + 1;
        exit(NextBookingID);
    end;

    var


}
