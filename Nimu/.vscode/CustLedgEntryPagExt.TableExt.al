tableextension 50134 "Cust. Leadger Entry Ext" extends "Cust. Ledger Entry"
{
    procedure GetNumberOfDaysExpired(): Integer
    var
        NumberOfDays: Integer;
    begin
        if Today <= "Due Date" then
            exit(0);
        NumberOfDays := "Due Date" - Today();
        exit(Abs(NumberOfDays));
    end;
}