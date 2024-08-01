table 50102 "payment table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student ID"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Student ID';
            Editable = false;
        }
        field(2; "Booking ID"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Booking ID';
            Editable = false;
        }
        field(3; "Exam Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Exam Name';
            Editable = false;
        }
        field(4; "Transcation ID"; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
            Caption = 'Transcation ID';
            Editable = false;
        }
        field(5; "Payment Date"; DateTime)
        {
            DataClassification = ToBeClassified;
            Caption = 'Payment Date';
            Editable = false;
        }
        field(6; "Payment Method"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "","Credit/Debit/PrePaid Card","Bank Transfer","BINANCE","OKX","OTHER PAYMENT METHODS","PayCashLess","M-Pesa",JamboPay,"Pesaflow Direct";
        }
        field(7; Currency; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "","BITCOIN","KES","USD","EUR","GBP";
        }
        field(8; "Payment Amount"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Payment Amount';
        }


        field(9; "Payment Status"; Option)
        {
            DataClassification = ToBeClassified;
            Caption = 'Payment Status';
            OptionMembers = "","Not Paid","Pending","confirmed";
        }
    }

    keys
    {
        key(PK; "Transcation ID")
        {
            Clustered = true;
        }
        key(FK; "Booking ID")
        {

        }
        key(SK; "Student ID")
        {

        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;


    var
        PaymentDateFiller: Codeunit "PaymentDateFiller";

    trigger OnInsert()
    begin
        // Call the codeunit procedure to set the Payment Date
        PaymentDateFiller.AutoFillPaymentDate(Rec);
    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}