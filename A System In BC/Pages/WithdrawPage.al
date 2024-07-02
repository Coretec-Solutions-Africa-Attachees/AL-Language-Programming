page 50114 "Withdraw"
{
    PageType = StandardDialog;
    // ApplicationArea = All;
    // UsageCategory = Administration;

    layout
    {
        area(content)
        {
            group("Withdraw Information")
            {
                //The primary key is not compulsory in this category because the user does not need to insert it
                field("Withdraw ID"; 'Withdraw ID')
                {
                    // ApplicationArea = All;
                    Caption = 'Withdraw ID (Not Editable)';
                    Editable = false; // Disabling the ability of ID to be edited
                }
                group("Client Information")
                {
                    field(Phone; 'Phone')
                    {
                        // ApplicationArea = All;
                        Caption = 'Client''s Phone Number(Not Editable)';
                        Editable = false; // Disabling the ability of ID to be edited                    
                    }
                }
                group("Enter Amount You'd Wish To Withdraw:")
                {
                    field("Withdraw Amount"; WithdrawAmount)
                    {
                        // ApplicationArea = All;
                        Caption = '  ';
                    }
                }
            }

            group("Withdraw Date And Time")
            {
                field("Withdraw Date"; 'Withdraw Date')
                {
                    // ApplicationArea = All;
                    Caption = 'Withdraw Date And Time (Not Editable)';
                    Editable = false; // Disabling the ability of ID to be edited
                }
            }
        }
    }

    trigger OnClosePage()
    var
        WithdrawCodeunit: Codeunit "WithdrawCodeunit";
    begin
        WithdrawCodeunit.InsertData(WithdrawAmount);
    end;

    var
        WithdrawAmount: Decimal;
}