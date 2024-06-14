// This page will contain an action in business central; which when clicked will trigger the codeunit to open the input page

// Check changes made to the launch.json file (located in this file's folder) to launch BC to this page

page 50103 "Perform Computation"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        // Define the page layout
        area(content)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action("Calculate Balance")
            {
                Caption = 'Calculate Balance';
                Image = Balance;
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true; // Makes the button large
                PromotedOnly = true;  // Ensures the button appears without lines when set to true
                trigger OnAction()
                begin
                    // Codeunit.Run(50103); // Run the codeunit
                    CalcDif.OpenPage();
                end;
            }
        }
    }

    var
        CalcDif: Codeunit "Calculate Difference";
}