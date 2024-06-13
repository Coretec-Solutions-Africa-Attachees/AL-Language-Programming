// This codeunit will be triggered when an action in 'Perform Computation' page is started to display a page for inputs to be entered, and compute the difference between the 2 inputs.
codeunit 50104 "Calculate Difference"
{
    // Procedure to open the input page
    procedure OpenPage()
    begin
        InputPage.RUN();
    end;

    // Procedure to compute the difference between the inputs from the input page
    procedure GetDifference(Number1: Decimal; Number2: Decimal) Difference: Decimal
    begin
        Difference := Number1 - Number2;
        Message('The Customer''s new balance is: %1💲', Difference);
    end;

    var
        InputPage: Page "Input Page"; //This is the input page to be displayed to enter inputs(defined in Page3.al file)

}