//check the changes made to the launch.json file (located in this file's folder) while creating a table using AL code below

table 50101 Employee_
{
    Caption = 'Employee Table';

    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Employee ID"; Code[10])
        {
            DataClassification = ToBeClassified;
        }

        field(2; "Employee Name"; Text[30])
        {
            DataClassification = ToBeClassified;
        }

        field(3; "Date Of Birth"; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(4; Gender; Option)
        {
            OptionMembers = "",Male,Female;
            DataClassification = ToBeClassified;
        }

        field(5; "Remote Work Status"; Boolean)
        {
            DataClassification = ToBeClassified;
            InitValue = false; //The default value is false
        }

    }

    keys
    {
        key(PK; "Employee ID")
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
        Message('Data Recorded Successfully');
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