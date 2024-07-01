page 50118 "Cash Management"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Cash Management";

    layout
    {
        area(Content)
        {
            group(Balance)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Cash Balance"; Rec."Cash Balance")
                {
                    ApplicationArea = All;
                    Editable = false;
                    Caption = 'Current Balance (KSh)';
                }
                field("Supplier Name"; Rec."Supplier Name")
                {
                    ApplicationArea = All;
                    Editable = true;
                }
            }

            group(Deposit)
            {
                field("Deposit Amount"; Rec."Deposit Amount")
                {
                    ApplicationArea = All;
                }
            }

            group(Withdrawal)
            {
                field("Withdrawal Amount"; Rec."Withdrawal Amount")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Deposit Cash")
            {
                ApplicationArea = All;
                Caption = 'Deposit Cash';
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    Rec.DepositCash(Rec."Deposit Amount", Rec."Supplier ID"); // Added Supplier ID
                    Message('Deposited KSh %1 for supplier %2', Rec."Deposit Amount", Rec."Supplier Name");
                end;
            }

            action("Withdraw Cash")
            {
                ApplicationArea = All;
                Caption = 'Withdraw Cash';
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    Rec.WithdrawCash(Rec."Withdrawal Amount", Rec."Supplier ID"); // Added Supplier ID
                    Message('Withdrew KSh %1 for supplier %2', Rec."Withdrawal Amount", Rec."Supplier Name");
                end;
            }

            action("View Balance")
            {
                ApplicationArea = All;
                Caption = 'View Balance';
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    Message('Current Balance: KSh %1 for supplier %2', Rec."Cash Balance", Rec."Supplier Name");
                end;
            }
        }
    }
}
