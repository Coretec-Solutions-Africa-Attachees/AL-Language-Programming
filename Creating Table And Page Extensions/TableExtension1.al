//Check the changes made to the launch.json file (located in this file's folder) while creating a table extension

tableextension 50102 "Next Of Kin" extends Customer
{
    fields
    {
        field(50101; "Full Name"; Text[50])
        {
            Caption = 'Full Name';
            DataClassification = ToBeClassified;
        }
        field(50102; "ID Or Birth Cert"; Text[50])
        {
            Caption = 'ID Or Birth Cert';
            DataClassification = ToBeClassified;
        }
        field(50103; "Date Of Birth"; Date)
        {
            Caption = 'Date Of Birth';
            DataClassification = ToBeClassified;
        }
        field(50104; Gender; Option)
        {
            Caption = 'Gender';
            DataClassification = ToBeClassified;
            OptionMembers = " ",Male,Female;
        }
        field(50105; Phone; Text[15])
        {
            Caption = 'Phone';
            DataClassification = ToBeClassified;
        }
        field(50106; Email; Text[50])
        {
            Caption = 'Email';
            DataClassification = ToBeClassified;
        }
        field(50107; Location_Address; Text[50])
        {
            Caption = 'Address';
            DataClassification = ToBeClassified;
        }
    }
}