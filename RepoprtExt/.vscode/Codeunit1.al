codeunit 50127 MyCodeunit
{
    EventSubscriberInstance = StaticAutomatic;
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnAfterInsertInvoiceHeader', '', true, true)]
    local procedure MyProcedure4(var SalesHeader: Record "Sales Header"; var SalesInvHeader: Record "Sales Invoice Header")
    begin
        SalesInvHeader."Location1" := SalesHeader.Location1;
    end;


    var
        myInt: Integer;
}