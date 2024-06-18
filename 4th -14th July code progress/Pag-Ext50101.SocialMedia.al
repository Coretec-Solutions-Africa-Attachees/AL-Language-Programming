pageextension 50101 "Social Media Card" extends "Customer Card"
{
    layout
    {
        addfirst(General)
        {
            field(Facebook; Rec.Facebook)
            {
                ApplicationArea = All;
            }

            field(Instagram; Rec.Instagram)
            {
                ApplicationArea = All;
            }

            field(Twitter; Rec.Twitter)
            {
                ApplicationArea = All;
            }

            field(LinkenIn; Rec.LinkenIn)
            {
                ApplicationArea = All;
            }
        }
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}
