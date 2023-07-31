codeunit 50133 "Install Codeunit"
{
    Subtype = Install;
    trigger OnInstallAppPerCompany()
    var
        SampleTab: Record "InstallTable";
    begin
        if SampleTab.IsEmpty then begin
            insertTab(1, 'Red', 'C-Red');
            insertTab(2, 'Red', 'C-Red');

        end

    end;

    var
        myInt: Integer;

    local procedure InsertTab(arg1: Integer; arg2: Text; arg3: Text)
    var
        myInt: Integer;
        STAB: Record "InstallTable";
    begin
        STAB.Init();
        STAB."Entry No." := arg1;
        STAB."Install Text" := arg2;
        STAB."Upgrade Text" := arg3;
        STAB.Insert();

    end;
}