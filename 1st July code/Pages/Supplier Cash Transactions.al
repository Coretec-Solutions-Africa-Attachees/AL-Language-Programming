page 50119 "Supplier Cash Transactions"
{
    PageType = ListPart;
    SourceTable = "Cash Management";
    // SourceTableView = where("Supplier ID" = field("ID"));
    UsageCategory = Administration;
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                }
                field("Deposit Amount"; Rec."Deposit Amount")
                {
                    ApplicationArea = All;
                }
                field("Withdrawal Amount"; Rec."Withdrawal Amount")
                {
                    ApplicationArea = All;
                }
                field("Transaction Date"; Rec."Transaction Date")
                {
                    ApplicationArea = All;
                }
                field("Supplier Name"; Rec."Supplier Name")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
