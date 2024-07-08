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


    // procedure GetClientDetails()
    // begin
    //     Phone := SharedVariablesCodeunit.GetSharedVariablePhone();

    //     DepositTable.SetRange(Phone, Phone);
    //     if DepositTable.FindSet(true) then begin
    //         repeat
    //             "Deposit ID" := DepositTable."Deposit ID";
    //             "Deposit Amount" := DepositTable."Deposit Amount";
    //             "New Balance" := DepositTable."New Balance";
    //             "Deposit Date" := DepositTable."Deposit Date";
    //         until DepositTable.Next() = 0;
    //     end else begin
    //         Message('Error❗');
    //         Page.Run(50113);
    //     end;

    //     WithdrawTable.SetRange(Phone, Phone);
    //     if WithdrawTable.FindSet(true) then begin
    //         repeat
    //             "Withdraw ID" := WithdrawTable."Withdraw ID";
    //             "Withdraw Amount" := WithdrawTable."Withdraw Amount";
    //             "New__Balance" := WithdrawTable."New Balance";
    //             "Withdraw Date" := WithdrawTable."Withdraw Date";
    //         until WithdrawTable.Next() = 0;
    //     end else begin
    //         Message('Error❗');
    //         Page.Run(50113);
    //     end;
    // end;

    // procedure GetDepositID(): Integer
    // begin
    //     Phone := SharedVariablesCodeunit.GetSharedVariablePhone();
    //     DepositTable.SetRange(Phone, Phone);
    //     if DepositTable.FindSet(true) then begin
    //         repeat
    //             "Deposit ID" := DepositTable."Deposit ID";
    //         until DepositTable.Next() = 0;
    //     end else begin
    //         Message('Error❗');
    //         Page.Run(50113);
    //     end;
    //     exit("Deposit ID");
    // end;

    // procedure GetDepositAmount(): Decimal
    // begin
    //     Phone := SharedVariablesCodeunit.GetSharedVariablePhone();
    //     DepositTable.SetRange(Phone, Phone);
    //     if DepositTable.FindSet(true) then begin
    //         repeat
    //             "Deposit Amount" := DepositTable."Deposit Amount";
    //         until DepositTable.Next() = 0;
    //     end else begin
    //         Message('Error❗');
    //         Page.Run(50113);
    //     end;
    //     exit("Deposit Amount");
    // end;

    // procedure GetNewBalance(): Decimal
    // begin
    //     Phone := SharedVariablesCodeunit.GetSharedVariablePhone();
    //     DepositTable.SetRange(Phone, Phone);
    //     if DepositTable.FindSet(true) then begin
    //         repeat
    //             "New Balance" := DepositTable."New Balance";
    //         until DepositTable.Next() = 0;
    //     end else begin
    //         Message('Error❗');
    //         Page.Run(50113);
    //     end;
    //     exit("New Balance");
    // end;

    // procedure GetDepositDate(): DateTime
    // begin
    //     Phone := SharedVariablesCodeunit.GetSharedVariablePhone();
    //     DepositTable.SetRange(Phone, Phone);
    //     if DepositTable.FindSet(true) then begin
    //         repeat
    //             "Deposit Date" := DepositTable."Deposit Date";
    //         until DepositTable.Next() = 0;
    //     end else begin
    //         Message('Error❗');
    //         Page.Run(50113);
    //     end;
    //     exit("Deposit Date");
    // end;

    // procedure GetWithdrawID(): Integer
    // begin
    //     Phone := SharedVariablesCodeunit.GetSharedVariablePhone();
    //     WithdrawTable.SetRange(Phone, Phone);
    //     if WithdrawTable.FindSet(true) then begin
    //         repeat
    //             "Withdraw ID" := WithdrawTable."Withdraw ID";
    //         until WithdrawTable.Next() = 0;
    //     end else begin
    //         Message('Error❗');
    //         Page.Run(50113);
    //     end;
    //     exit("Withdraw ID");
    // end;

    // procedure GetWithdrawAmount(): Decimal
    // begin
    //     Phone := SharedVariablesCodeunit.GetSharedVariablePhone();
    //     WithdrawTable.SetRange(Phone, Phone);
    //     if WithdrawTable.FindSet(true) then begin
    //         repeat
    //             "Withdraw Amount" := WithdrawTable."Withdraw Amount";
    //         until WithdrawTable.Next() = 0;
    //     end else begin
    //         Message('Error❗');
    //         Page.Run(50113);
    //     end;
    //     exit("Withdraw Amount");
    // end;

    // procedure GetNew__Balance(): Decimal
    // begin
    //     Phone := SharedVariablesCodeunit.GetSharedVariablePhone();
    //     WithdrawTable.SetRange(Phone, Phone);
    //     if WithdrawTable.FindSet(true) then begin
    //         repeat
    //             "New__Balance" := WithdrawTable."New Balance";
    //         until WithdrawTable.Next() = 0;
    //     end else begin
    //         Message('Error❗');
    //         Page.Run(50113);
    //     end;
    //     exit("New__Balance");
    // end;

    // procedure GetWithdrawDate(): DateTime
    // begin
    //     Phone := SharedVariablesCodeunit.GetSharedVariablePhone();
    //     WithdrawTable.SetRange(Phone, Phone);
    //     if WithdrawTable.FindSet(true) then begin
    //         repeat
    //             "Withdraw Date" := WithdrawTable."Withdraw Date";
    //         until WithdrawTable.Next() = 0;
    //     end else begin
    //         Message('Error❗');
    //         Page.Run(50113);
    //     end;
    //     exit("Withdraw Date");
    // end;

    // procedure GetRowcount1(): Integer
    // begin
    //     Phone := SharedVariablesCodeunit.GetSharedVariablePhone();
    //     DepositTable.SetFilter(Phone, Phone);
    //     RowCount1 := DepositTable.Count();
    //     exit(RowCount1);
    // end;

    // procedure GetRowcount2(): Integer
    // begin
    //     Phone := SharedVariablesCodeunit.GetSharedVariablePhone();
    //     WithdrawTable.SetFilter(Phone, Phone);
    //     RowCount2 := WithdrawTable.Count();
    //     exit(RowCount2);
    // end;


    trigger OnRun()
    begin

    end;

    var
        // ClientTable: Record "ClientTable";
        SharedVariablesCodeunit: Codeunit "SharedVariablesCodeunit";
        DepositTable: Record DepositTable;
        WithdrawTable: Record WithdrawTable;
        ClientReportTable: Record ClientReportTable;
        Phone: Text[20];
        Count: Integer;
    // "Deposit ID": Integer;
    // "Deposit Amount": Decimal;
    // "New Balance": Decimal;
    // "Deposit Date": DateTime;
    // "Withdraw ID": Integer;
    // "Withdraw Amount": Decimal;
    // "New__Balance": Decimal;
    // "Withdraw Date": DateTime;
    // RowCount1: Integer;
    // RowCount2: Integer;
}