codeunit 50115 "CheckBalanceCodeunit"
{
    var
        ClientTable: Record "ClientTable";
        SharedVariablesCodeunit: Codeunit "SharedVariablesCodeunit";
        Phone: Text[20];
        Balance: Decimal;

    procedure CheckBalance()
    begin
        Phone := SharedVariablesCodeunit.GetSharedVariablePhone();
        ClientTable.SetFilter(Phone, Phone);
        if ClientTable.FindFirst() then begin
            Balance := ClientTable."Account Balance";
            Message('Your Balance Is: %1💲', Balance);
        end;
    end;
}