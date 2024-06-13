// This page will be the interface between the codeunit and the user; allowing the user to enter inputs to be processed by the codeunit
// This page will be launched by the codeunit
// Note that the ID of this page is same to the ID of the codeunit

page 50104 "Input Page"
{
    PageType = StandardDialog;
    UsageCategory = Administration;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(Group)
            {
                group("Enter the customer's current balance:")
                {
                    field("Current balance"; Number1)
                    {
                        ApplicationArea = All;
                        Caption = '  ';
                    }
                }

                group("Enter the amount the customer wishes to withdraw:")
                {
                    field("Amount to withdraw"; Number2)
                    {
                        ApplicationArea = All;
                        Caption = '  ';
                    }
                }
            }
        }
    }

    trigger OnClosePage();
    var
        Click: Codeunit "Calculate Difference";
    begin
        // if CurrPage.RunModal = Action::LookupOK then begin
        //     // Perform the action when OK is clicked
        //     Difference := Click.GetDifference(Number1, Number2);
        //     CurrPage.Update(false);
        // end else begin
        //     // Perform an action when Cancel is clicked or the page is closed otherwise
        // end;

        Difference := Click.GetDifference(Number1, Number2);
        CurrPage.Update(false);
    end;

    var
        Difference: Decimal;
        Number1: Decimal;
        Number2: Decimal;
}