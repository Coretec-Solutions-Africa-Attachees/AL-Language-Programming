page 50117 "Supplier Page"
{
    PageType = Card;
    SourceTable = Supplier;
    ApplicationArea = All;
    Caption = 'Supplier Details';
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Name"; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field("Contact Info"; Rec."Contact Info")
                {
                    ApplicationArea = All;
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                }
                field(Phone; Rec.Phone)
                {
                    ApplicationArea = All;
                }
                field("Account Balance"; Rec."Account Balance")
                {
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                }
            }

            part(CashTransactions; "Supplier Cash Transactions")
            {
                ApplicationArea = All;
            }
        }
    }
}
