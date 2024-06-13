//Check the changes made to the launch.json file (located in this file's folder) while creating a table using AL code below

table 50101 "Employee_"
{
    Caption = 'Employee Table';

    DataClassification = ToBeClassified;
    DataPerCompany = true;

    fields
    {
        field(1; "Employee ID"; Integer)
        {
            // Ensuring the primary key automatically increments is in the next line of code
            // AutoIncrement = true;
            DataClassification = ToBeClassified;
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

        field(6; Gender; Option)
        {
            OptionMembers = "",Male,Female;
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

        field(9; "Remote Work Status"; Boolean)
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

        key(SK; "First Name", "Middle Name", "Last Name / Surname")
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
    //Ensuring the first record's primary key is 1 and the other primary keys increment
    var
        mytable: Record "Employee_";
        lastpk: Integer;
    begin
        if mytable.FindLast then
            lastpk := mytable."Employee ID"
        else
            lastpk := 0;

        Rec."Employee ID" := lastpk + 1;

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

// DELETING SINGLE RECORD FROM TABLE
// procedure DeleteSingleRecord()
// var
//     MyRecord: Record "MyTable";
// begin
//     if MyRecord.Get(SomePrimaryKeyValue) then
//         MyRecord.Delete();
// end;

// DELETING ALL RECORDS FROM TABLE
// procedure DeleteAllRecords()
// var
//     MyRecord: Record "MyTable";
// begin
//     MyRecord.DeleteAll();
// end;