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
        if (Number1 = 0.00) or (Number2 = 0.00) then begin

            if (Number1 = 0.00) and (Number2 <> 0.00) then // <> means not equal to
                Message('Withdrawal failed. The Customer''s balance is either not inputted or is 0💲.')
            else
                if (Number2 = 0.00) and (Number1 <> 0.00) then
                    Message('The Customer has not withdrawn anything.\The Customer''s balance is: %1💲', Number1)
                else
                    if (Number1 = 0.00) and (Number2 = 0.00) then
                        Message('No Inputs Inserted.')
        end
        else begin
            if (Number2 > Number1) then
                Message('The Customer''s balance is not enough to make the withdrawal.')
            else begin
                Difference := Number1 - Number2;
                Message('The Customer has successfully withdrawn: %1💲.\The Customer''s new balance is: %2💲.', Number2, Difference)
            end
        end;

    end;

    var
        InputPage: Page "Input Page"; //This is the input page to be displayed to enter inputs(defined in Page3.al file)

}