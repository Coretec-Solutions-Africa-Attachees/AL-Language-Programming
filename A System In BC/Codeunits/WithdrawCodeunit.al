codeunit 50114 "WithdrawCodeunit"
{
    var
        ClientTable: Record "ClientTable";
        WithdrawTable: Record "WithdrawTable";
        SharedVariablesCodeunit: Codeunit "SharedVariablesCodeunit";
        Phone: Text[20];
        OldBalance: Decimal;
        NewBalance: Decimal;

    procedure InsertData(WithdrawAmount: Decimal)
    begin
        Phone := SharedVariablesCodeunit.GetSharedVariablePhone();
        if (WithdrawAmount = 0.00) then begin
            Message('Enter Amount To Withdraw❗');
        end else
            if (WithdrawAmount < 0) then begin
                Message('Amount To Withdraw Cannot Be Negative❗');
            end else begin
                ClientTable.SetFilter(Phone, Phone); // Field name  --Actual value

                if ClientTable.FindFirst() then begin
                    OldBalance := ClientTable."Account Balance";

                    if (WithdrawAmount < OldBalance) then begin
                        NewBalance := OldBalance - WithdrawAmount;

                        WithdrawTable.Init();
                        WithdrawTable.Phone := Phone;
                        WithdrawTable."Withdraw Amount" := WithdrawAmount;
                        WithdrawTable."Withdraw Date" := CurrentDateTime();
                        WithdrawTable."New Balance" := NewBalance;
                        WithdrawTable.Insert();

                        if ClientTable.FindSet(true) then begin
                            repeat
                                if ClientTable.Phone = Phone then begin
                                    ClientTable."Account Balance" := NewBalance;
                                    ClientTable.Modify();
                                    Message('Withdrawal Successful✅You have withdrawn: %1💲\Your New Balance Is: %2💲', WithdrawAmount, NewBalance);
                                end;
                            until ClientTable.Next() = 0;
                        end else begin
                            WithdrawTable.SetFilter(Phone, Phone);
                            if WithdrawTable.FindFirst() then begin
                                // Delete the row
                                WithdrawTable.Delete();
                                Message('Withdrawal Failed❗');
                            end;
                        end;

                    end else begin
                        WithdrawTable.SetFilter(Phone, Phone);
                        if WithdrawTable.FindFirst() then begin
                            Message('Withdrawal Failed❗\Your balance, %1💲, is not enough to make this withdrawal.', OldBalance);
                        end;
                    end;
                end else begin
                    Error();
                end;
            end;
    end;

    procedure Error()
    begin
        Message('Withdrawal Failed❗');
    end;
}