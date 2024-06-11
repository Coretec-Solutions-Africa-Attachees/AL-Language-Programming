//check the changes made to the launch.json file (located in this file's folder) while creating a table using AL code below

table 50110 Stock_
{
    Caption = ' Stock Table';

    DataClassification = ToBeClassified;

    fields
    {
        field(1; "product ID"; Code[5])
        {
            DataClassification = ToBeClassified;
        }

        field(2; "product Name"; Text[10])
        {
            DataClassification = ToBeClassified;
        }

        field(3; "Date purchased"; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(4; brand; option)
        {
            OptionMembers = HG,Nunix,Generic,RichPower,FK,Cerriotti,others;
            DataClassification = ToBeClassified;
        }

        field(5; price; code[6])
        {
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(PK; "product ID")
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