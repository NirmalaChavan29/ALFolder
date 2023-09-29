codeunit 50100 Installation
{
    Subtype = Install;
    trigger OnInstallAppPerCompany()
    begin
        InsertDefaultChickenTypes();
    end;

    local procedure InsertDefaultChickenTypes()
    var
        ChickenType: Record "Chicken Types";
    begin
        Clear(ChickenType);
        if not ChickenType.IsEmpty then exit;

        InsertChickenType('ChickenType01', 'ChickenType01');
        InsertChickenType('ChickenType02', 'ChickenType02');
        InsertChickenType('ChickenType03', 'ChickenType03');
    end;

    local procedure InsertChickenType(ChickenTypeCode: Code[20]; ChickenTypeDescription: Code[50])
    var
        ChickenType: Record "Chicken Types";
    begin
        Clear(ChickenType);
        ChickenType.Code := ChickenTypeCode;
        ChickenTypeDescription := ChickenTypeDescription;
        ChickenType.Insert();
    end;

    var
        myInt: Integer;
}