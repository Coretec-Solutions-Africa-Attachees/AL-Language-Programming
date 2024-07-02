codeunit 50110 "LogInCodeUnit"
{
    procedure LogIn(Phone: Text[20]; Password: Text[100])
    var
        ClientTable: Record "ClientTable";
        SharedVariablesCodeunit: Codeunit "SharedVariablesCodeunit";
        SavedPassword: Text[100];
    begin
        if (Phone = '') or (Password = '') then begin
            Message('Phone Or Password Input Is Empty❗');
            Page.Run(50110);
        end else begin
            ClientTable.SetFilter(Phone, Phone);
            if ClientTable.FindFirst() then begin
                SavedPassword := ClientTable.Password;
                if SavedPassword = Password then begin
                    Message('Login successful✅');

                    // Sharing phone variable
                    SharedVariablesCodeunit.SetSharedVariablePhone(Phone);

                    Page.Run(50113);
                end else begin
                    Message('Incorrect password❗');
                    Page.Run(50110);
                end;
            end else begin
                Message('Customer with Phone Number ''%1'' not found❗', Phone);
                Page.Run(50110);
            end;
        end;
    end;
}