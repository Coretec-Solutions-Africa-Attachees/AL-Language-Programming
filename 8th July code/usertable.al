table 50114 CustomUser
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; Name; Text[50])
        {
            Caption = 'User Name';
        }
        field(2; CompanyName; Text[100])
        {
            Caption = 'Company Name';
        }
        field(3; Password; Text[50])
        {
            Caption = 'Password';
        }
        field(4; Email; Text[100])
        {
            Caption = 'Email';
        }
        field(5; Role; Option)
        {
            Caption = 'Role';
            OptionMembers = "Admin","User";
        }
    }

    keys
    {
        key(PK; Name, CompanyName)
        {
            Clustered = true;
        }
    }
}