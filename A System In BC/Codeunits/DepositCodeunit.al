codeunit 50111 "DepositCodeunit"
{
    var
        ClientTable: Record "ClientTable";
        DepositTable: Record "DepositTable";
        SharedVariablesCodeunit: Codeunit "SharedVariablesCodeunit";
        Phone: Text[20];
        OldBalance: Decimal;
        NewBalance: Decimal;

    procedure InsertData(DepositAmount: Decimal)
    begin
        Phone := SharedVariablesCodeunit.GetSharedVariablePhone();
        if (DepositAmount = 0.00) then begin
            Message('Insert Deposit Amount❗');
        end else
            if (DepositAmount < 0) then begin
                Message('Deposit Cannot Be Negative❗');
            end else begin
                ClientTable.SetFilter(Phone, Phone); // Field name  --Actual value

                if ClientTable.FindFirst() then begin
                    OldBalance := ClientTable."Account Balance";
                    NewBalance := OldBalance + DepositAmount;

                    DepositTable.Init();
                    DepositTable.Phone := Phone;
                    DepositTable."Deposit Amount" := DepositAmount;
                    DepositTable."Deposit Date" := CurrentDateTime();
                    DepositTable."New Balance" := NewBalance;
                    DepositTable.Insert();

                    if ClientTable.FindSet(true) then begin
                        repeat
                            if ClientTable.Phone = Phone then begin
                                ClientTable."Account Balance" := NewBalance;
                                ClientTable.Modify();
                                Message('Deposit Successful✅You have deposited: %1💲\Your New Balance Is: %2💲', DepositAmount, NewBalance);
                            end;
                        until ClientTable.Next() = 0;
                    end else begin
                        Error();
                    end;

                end else begin
                    Message('Deposit Failed❗');
                end;
            end;
    end;

    procedure Error()
    begin
        DepositTable.SetFilter(Phone, Phone);
        if DepositTable.FindFirst() then begin
            // Delete the row
            DepositTable.Delete();
            Message('Deposit Failed❗');
        end;
    end;
}