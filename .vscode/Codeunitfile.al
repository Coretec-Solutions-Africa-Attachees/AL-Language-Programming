codeunit 50103 "Employee Processing"
{

    procedure GetEmployeeCountByDepartment(DepartmentCode: Code[10]): Integer
    var
        EmployeeRec: Record Employe;
        EmployeeCount: Integer;
    begin
        EmployeeCount := 0;
        if EmployeeRec.FindSet() then
            repeat
                if EmployeeRec."Department" = DepartmentCode then
                    EmployeeCount += 1;
            until EmployeeRec.Next() = 0;

        exit(EmployeeCount);
    end;

    trigger OnRun()
    var
        DeptCode: Code[10];
        Count: Integer;
    begin
        DeptCode := 'HR'; // Example department code
        Count := GetEmployeeCountByDepartment(DeptCode);
        Message('The number of employees in the %1 department is %2', DeptCode, Count);
    end;
}

