codeunit 50112 "SharedVariablesCodeunit"
{
    SingleInstance = true;

    var
        SharedVariablePhone: Text[20];

    procedure SetSharedVariablePhone(Value: Text[20])
    begin
        SharedVariablePhone := Value;
    end;

    procedure GetSharedVariablePhone(): Text[20]
    begin
        exit(SharedVariablePhone);
    end;
}