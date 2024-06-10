tableextension 50100 "Social Media" extends Customer
{
    fields
    {
        field(50100; Instagram; Text[50])
        {
            Caption = 'Instagram';
            DataClassification = ToBeClassified;
        }
        field(50101; Facebook; Text[50])
        {
            Caption = 'Facebook';
            DataClassification = ToBeClassified;
        }
        field(50102; Twitter; Text[50])
        {
            Caption = 'Twitter';
            DataClassification = ToBeClassified;
        }
        field(50103; LinkenIn; Text[50])
        {
            Caption = 'LinkenIn';
            DataClassification = ToBeClassified;
        }
    }
}