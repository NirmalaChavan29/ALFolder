codeunit 60100 EventSub
{
    EventSubscriberInstance = StaticAutomatic;

    [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnCopyFromItemOnAfterCheck', '', true, true)]
    local procedure OnCopyFromItemOnAfterCheck(Item: Record Item; var SalesLine: Record "Sales Line")
    begin
        SalesLine.Description3 := Item."Description 3";
        SalesLine.Description4 := Item."Description 4";
        SalesLine.ItemGroup := Item.ItemGroup;
        SalesLine.Brand := Item.Brand;
    end;
}