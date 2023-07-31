codeunit 50126 MyCodeunit1
{
    EventSubscriberInstance = StaticAutomatic;
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnAfterInsertInvoiceHeader', '', true, true)]
    local procedure MyProcedure4(var SalesHeader: Record "Sales Header"; var SalesInvHeader: Record "Sales Invoice Header")
    begin
        SalesInvHeader."Code" := SalesHeader."code";
    end;


    var
        myInt: Integer;
}