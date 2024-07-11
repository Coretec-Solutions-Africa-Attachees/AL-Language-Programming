<<<<<<< Updated upstream
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

=======
table 50101 "Employe"
{
    DataClassification = ToBeClassified;

    // Properties of the table
    DataPerCompany = true;
    Caption = 'Employee Table';

    // Fields in the table
    fields
    {
        // Field 1: Employee ID - Unique identifier for each employee
        field(1; "EmployeeID"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Employee ID';
            AutoIncrement = true;
        }

        // Field 2: First Name - First name of the employee
>>>>>>> Stashed changes
        field(2; "FirstName"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'First Name';
        }

<<<<<<< Updated upstream
=======
        // Field 3: Last Name - Last name of the employee
>>>>>>> Stashed changes
        field(3; "LastName"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Last Name';
        }

<<<<<<< Updated upstream
=======
        // Field 4: Birth Date - Birth date of the employee
>>>>>>> Stashed changes
        field(4; "BirthDate"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Birth Date';
        }

<<<<<<< Updated upstream
=======
        // Field 5: Position - Job position of the employee
>>>>>>> Stashed changes
        field(5; "Position"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Position';
        }

<<<<<<< Updated upstream
        field(6; "HireDate"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Hire Date';
        }

=======

        // Field 7: Department - Department where the employee works
>>>>>>> Stashed changes
        field(7; "Department"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Department';
        }

<<<<<<< Updated upstream
        field(8; "Email"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Email';
        }

=======
        // Field 8: Email - Email address of the employee
        field(8; "Email Address"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Email Address';
        }

        // Field 9: Phone Number - Contact number of the employee
>>>>>>> Stashed changes
        field(9; "PhoneNumber"; Text[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Phone Number';
        }
    }

<<<<<<< Updated upstream
    keys
    {
=======
    // Keys in the table
    keys
    {
        //This is the Primary Key
>>>>>>> Stashed changes
        key(PK; "EmployeeID")
        {
            Clustered = true;
        }

<<<<<<< Updated upstream
=======
        // This is a Secondary Key and has a combination of the First Name and Last Name
>>>>>>> Stashed changes
        key(SK; "FirstName", "LastName")
        {
        }
    }

<<<<<<< Updated upstream
    trigger OnInsert()
    begin
    end;

    trigger OnModify()
    begin
    end;

    trigger OnDelete()
    begin
    end;

=======
    // Triggers for handling table events

    // Trigger executed on inserting a new record
    trigger OnInsert()
    begin
        // Custom logic for insert operation
        // if "EmployeeID" = 0 then begin
        //     "EmployeeID" := 1;
        // end;
    end;

    // Trigger executed on modifying an existing record
    trigger OnModify()
    begin
        // Custom logic for modify operation
    end;

    // Trigger executed on deleting an existing record
    trigger OnDelete()
    begin
        // Custom logic for delete operation
    end;
>>>>>>> Stashed changes
}
