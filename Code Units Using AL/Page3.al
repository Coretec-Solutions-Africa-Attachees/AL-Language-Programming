// This page will contain an action in business central; which when clicked will trigger the codeunit to open the input page

// Check changes made to the launch.json file (located in this file's folder) to launch BC to this page

page 50103 "Perform Computation"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    //showing a simple action
    actions
    {
        area(Processing)
        {
            action("Calculate Balance")
            {
                Caption = 'Calculate Balance';
                Image = Action;

                ApplicationArea = All;
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