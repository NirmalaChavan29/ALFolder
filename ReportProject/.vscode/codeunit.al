codeunit 50118 MyCodeunit
{
    [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnCopyFromItemOnAfterCheck', '', true, true)]
    local procedure OnCopyFromItemOnAfterCheck(Item: Record Item; var SalesLine: Record "Sales Line")
    begin
        SalesLine.City := Item.City;
    end;

    [EventSubscriber(ObjectType::Table, Database::"Sales Invoice Line", 'OnAfterInitFromSalesLine', '', true, true)]
    local procedure OnCopyFromItemOnAfterChechhk(var SalesInvLine: Record "Sales Invoice Line"; Salesline: Record "Sales Line")
    begin
        SalesInvLine.City := SalesLine.City;
    end;

    trigger OnRun()
    begin

    end;

    var
        myInt: Integer;
}