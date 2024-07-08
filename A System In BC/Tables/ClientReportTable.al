table 50117 ClientReportTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(10; "ReportID"; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = false;
        }
        field(1; Phone; Text[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Deposit ID"; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(3; "Deposit Amount"; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        // field(4; "New Balance"; Decimal)
        // {
        //     DataClassification = ToBeClassified;

        // }
        // field(5; "Deposit Date"; DateTime)
        // {
        //     DataClassification = ToBeClassified;

        // }
        field(11; "Column1"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Withdraw ID"; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(7; "Withdraw Amount"; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(8; "New__Balance"; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(9; "Date"; DateTime)
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        // key(PK; "Deposit ID", "Withdraw ID")
        // {
        //     Clustered = true;
        // }

        key(PK; "ReportID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

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