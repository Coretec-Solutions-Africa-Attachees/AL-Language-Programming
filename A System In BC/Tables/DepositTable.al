table 50111 "DepositTable"
{
    Caption = 'Deposit Table';

    DataClassification = ToBeClassified;
    DataPerCompany = true;

    fields
    {
        field(1; "Deposit ID"; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }

        field(2; Phone; Text[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = ClientTable.Phone;
        }

        field(3; "Deposit Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(4; "Deposit Date"; DateTime)
        {
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(PK; "Deposit ID", Phone)
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
        // Add modification triggers here
    end;


    trigger OnDelete()
    begin
        // Add deletion triggers here
    end;


    trigger OnRename()
    begin
        // Add rename triggers here
    end;
}