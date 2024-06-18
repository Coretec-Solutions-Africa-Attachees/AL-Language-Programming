codeunit 50103 "Employee Stipend"
{

    // The procedure tries to retrieve an employee record from the database using the provided employee ID.
    // If the record is found, it returns the stipend amount associated with that employee.
    // If the record is not found, it returns 0 as the stipend amount.
    procedure GetStipendByEmployeeID(EmployeeID: Integer): Decimal;
    var
        EmployeeRec: Record Employe;
        Stipend: Decimal;
    begin
        if EmployeeRec.Get(EmployeeID) then //This code line is trying to get information about an employee from the database by using the Get function and giving the EmployeeID as input.
            Stipend := EmployeeRec."Stipend"
        else
            Stipend := 0;

        exit(Stipend);
    end;
}

//This Codeunit is to encapsulate the logic for retrieving an employee's stipend amount.

