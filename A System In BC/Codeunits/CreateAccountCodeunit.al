codeunit 50109 "CreateAccountCodeunit"
{
    procedure InsertData(FirstName: Text[30];
        MiddleName: Text[30];
        LastNameSurname: Text[30];
        DateOfBirth: Date;
        Gender: Enum "Option Enum";
        Email: Text[100];
        Phone: Text[20];
        AccountBalance: Decimal;
        Password: Text[100])
    var
        ClientTable: Record "ClientTable";
        ClientTable1: Record "ClientTable";
        ClientTable2: Record "ClientTable";
        IsPhoneFound: Boolean;
        IsEmailFound: Boolean;
    begin

        IsPhoneFound := false;
        IsEmailFound := false;

        ClientTable1.SetRange(Phone, Phone);

        if ClientTable1.FindSet() then begin
            repeat
                if ClientTable1.Phone = Phone then begin
                    IsPhoneFound := true;
                    Message('Phone Number Already Exists❗If you already have an account, click "Go To ''Log In'' Instead".');
                    Page.Run(50109);
                    exit;
                end;
            until ClientTable1.Next() = 0;
        end else begin
            ClientTable2.SetRange(Email, Email);
            if ClientTable2.FindSet() then begin
                repeat
                    if ClientTable2.Email = Email then begin
                        IsEmailFound := true;
                        Message('Email Already Exists❗If you already have an account, click "Go To ''Log In'' Instead".');
                        Page.Run(50109);
                        exit;
                    end;
                until ClientTable2.Next() = 0;
            end;
        end;



        if (IsPhoneFound = false) and (IsEmailFound = false) then begin
            if (FirstName = '') or (MiddleName = '') or (LastNameSurname = '') or (Email = '') or (Phone = '') or (Password = '') then begin
                Message('Fill All Fields❗');
                Page.Run(50109);
            end
            else begin
                ClientTable.Init();
                ClientTable."First Name" := FirstName;
                ClientTable."Middle Name" := MiddleName;
                ClientTable."Last Name / Surname" := LastNameSurname;
                ClientTable."Date Of Birth" := DateOfBirth;
                ClientTable.Gender := Gender;
                ClientTable.Email := Email;
                ClientTable.Phone := Phone;
                ClientTable."Account Balance" := AccountBalance;
                ClientTable.Password := Password;
                ClientTable.Insert();
                Message('Account Created✅ Log In');
                Page.Run(50110);
            end;
        end;
    end;
}