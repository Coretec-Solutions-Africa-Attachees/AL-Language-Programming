codeunit 50117 ClientReportCodeunit
{
    procedure DepositInfo()
    begin
        Count := 0;
        Phone := SharedVariablesCodeunit.GetSharedVariablePhone();
        DepositTable.SetRange(Phone, Phone);
        ClientReportTable.DeleteAll();

        Count += 1;
        ClientReportTable.Init();
        ClientReportTable.ReportID := Count;
        ClientReportTable.Column1 := 'YOUR DEPOSIT INFORMATION';
        ClientReportTable.Insert();

        if DepositTable.FindSet() then begin
            repeat
                Count += 1;
                ClientReportTable.Init();
                ClientReportTable.ReportID := Count;
                ClientReportTable.Phone := SharedVariablesCodeunit.GetSharedVariablePhone();
                ClientReportTable."Deposit ID" := DepositTable."Deposit ID";
                ClientReportTable."Deposit Amount" := DepositTable."Deposit Amount";
                ClientReportTable."New__Balance" := DepositTable."New Balance";
                ClientReportTable."Date" := DepositTable."Deposit Date";
                ClientReportTable.Insert();
            until DepositTable.Next() = 0;
        end;
    end;


    procedure WithdrawInfo()
    begin
        Phone := SharedVariablesCodeunit.GetSharedVariablePhone();
        WithdrawTable.SetRange(Phone, Phone);

        Count += 1;
        ClientReportTable.Init();
        ClientReportTable.ReportID := Count;
        ClientReportTable.Column1 := 'YOUR WITHDRAWAL INFORMATION';
        ClientReportTable.Insert();

        if WithdrawTable.FindSet() then begin
            repeat
                Count += 1;
                ClientReportTable.Init();
                ClientReportTable.ReportID := Count;
                ClientReportTable.Phone := SharedVariablesCodeunit.GetSharedVariablePhone();
                ClientReportTable."Withdraw ID" := WithdrawTable."Withdraw ID";
                ClientReportTable."Withdraw Amount" := WithdrawTable."Withdraw Amount";
                ClientReportTable."New__Balance" := WithdrawTable."New Balance";
                ClientReportTable."Date" := WithdrawTable."Withdraw Date";
                ClientReportTable.Insert();
            until WithdrawTable.Next() = 0;
        end;
    end;


    trigger OnRun()
    begin

    end;

    var
        SharedVariablesCodeunit: Codeunit "SharedVariablesCodeunit";
        DepositTable: Record DepositTable;
        WithdrawTable: Record WithdrawTable;
        ClientReportTable: Record ClientReportTable;
        Phone: Text[20];
        Count: Integer;
}