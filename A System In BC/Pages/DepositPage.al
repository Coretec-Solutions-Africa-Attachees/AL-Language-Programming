page 50111 "Deposit"
{
    PageType = StandardDialog;
    // ApplicationArea = All;
    // UsageCategory = Administration;

    layout
    {
        area(content)
        {
            group("Deposit Information")
            {
                //The primary key is not compulsory in this category because the user does not need to insert it
                field("Deposit ID"; 'Deposit ID')
                {
                    // ApplicationArea = All;
                    Caption = 'Deposit ID (Not Editable)';
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
                group("Enter Amount You'd Wish To Deposit:")
                {
                    field("Deposit Amount"; DepositAmount)
                    {
                        // ApplicationArea = All;
                        Caption = '  ';
                    }
                }
            }

            group("Deposit Date And Time")
            {
                field("Deposit Date"; 'Deposit Date')
                {
                    // ApplicationArea = All;
                    Caption = 'Deposit Date And Time (Not Editable)';
                    Editable = false; // Disabling the ability of ID to be edited
                }
            }
        }
    }

    trigger OnClosePage()
    var
        DepositCodeunit: Codeunit "DepositCodeunit";
    begin
        DepositCodeunit.InsertData(DepositAmount);
    end;

    var
        DepositAmount: Decimal;
}