codeunit 50116 "LogOutCodeunit"
{
    var
        SharedVariablesCodeunit: Codeunit "SharedVariablesCodeunit";
        Phone: Text[20];

    procedure LogOut()
    begin
        Phone := '';
        SharedVariablesCodeunit.SetSharedVariablePhone(Phone);
        Page.Run(50110);
    end;
}