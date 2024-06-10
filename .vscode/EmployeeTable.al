table 50101 Employe
{
    DataClassification = ToBeClassified;

    DataPerCompany = true;
    Caption = 'Employee Table';

    fields
    {
        field(1; "EmployeeID"; Integer)
        {
            DataClassification = SystemMetadata;
            Caption = 'Employee ID';
        }

        field(2; "FirstName"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'First Name';
        }

        field(3; "LastName"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Last Name';
        }

        field(4; "BirthDate"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Birth Date';
        }

        field(5; "Position"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Position';
        }

        field(6; "HireDate"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Hire Date';
        }

        field(7; "Department"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Department';
        }

        field(8; "Email"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Email';
        }

        field(9; "PhoneNumber"; Text[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Phone Number';
        }
    }

    keys
    {
        key(PK; "EmployeeID")
        {
            Clustered = true;
        }

        key(SK; "FirstName", "LastName")
        {
        }
    }

    trigger OnInsert()
    begin
    end;

    trigger OnModify()
    begin
    end;

    trigger OnDelete()
    begin
    end;

}
