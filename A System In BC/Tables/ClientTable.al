table 50109 "ClientTable"
{
    Caption = 'Client Table';

    DataClassification = ToBeClassified;
    DataPerCompany = true;

    fields
    {
        field(1; "Client ID"; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }

        field(2; "First Name"; Text[30])
        {
            DataClassification = ToBeClassified;
        }

        field(3; "Middle Name"; Text[30])
        {
            DataClassification = ToBeClassified;
        }

        field(4; "Last Name / Surname"; Text[30])
        {
            DataClassification = ToBeClassified;
        }

        field(5; "Date Of Birth"; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(6; Gender; Enum "Option Enum")
        {
            DataClassification = ToBeClassified;
        }

        field(7; Email; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(8; Phone; Text[20])
        {
            DataClassification = ToBeClassified;
        }

        field(9; "Account Balance"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(10; Password; Text[100])
        {
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(PK; Phone, "Client ID")
        {
            Clustered = true;
        }

        // Code below ensures no duplicate values for these columns
        key(Email; Email)
        {
            Unique = true;
        }

        key(SK2; "First Name", "Middle Name", "Last Name / Surname")
        {

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