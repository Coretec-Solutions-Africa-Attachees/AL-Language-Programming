table 50118 "Cash Management"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(2; "Cash Balance"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Deposit Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Withdrawal Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Transaction Date"; DateTime)
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Supplier ID"; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = Supplier."ID";
        }
        field(7; "Supplier Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            TableRelation = Supplier.Name;
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }

    procedure DepositCash(Amount: Decimal; SupplierID: Integer)
    var
        SupplierRec: Record Supplier;
    begin
        "Deposit Amount" := Amount;
        "Transaction Date" := CurrentDateTime();
        "Cash Balance" += Amount;
        "Supplier ID" := SupplierID;
        if SupplierRec.Get(SupplierID) then begin
            "Supplier Name" := SupplierRec.Name;
        end;
        Rec.Modify();
    end;

    procedure WithdrawCash(Amount: Decimal; SupplierID: Integer)
    var
        SupplierRec: Record Supplier;
    begin
        "Withdrawal Amount" := Amount;
        "Transaction Date" := CurrentDateTime();
        "Cash Balance" -= Amount;
        "Supplier ID" := SupplierID;
        if SupplierRec.Get(SupplierID) then begin
            "Supplier Name" := SupplierRec.Name;
        end;
        Rec.Modify();
    end;
}
