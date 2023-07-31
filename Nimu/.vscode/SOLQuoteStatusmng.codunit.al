codeunit 50124 "SOL Quote Status Mgmt"
{
    procedure GetSalespersonForLoggedInUser(): Code[20]
    var
        Salesperson: Record "Salesperson/Purchaser";
        User: Record User;
    begin
        User.Reset();
        if not User.Get(UserSecurityId()) then
            exit('');
        if User."Contact Email".Trim() = '' then
            exit('');
        Salesperson.Reset();
        Salesperson.SetRange("E-Mail", User."Contact Email");
        if Salesperson.FindFirst() then
            exit(Salesperson.Code);
    end;

    procedure closeQuote(var SalesHeader: Record "Sales Header")
    begin
        ArchiveSalesQuote(SalesHeader);
    end;

    local procedure ArchiveSalesQuote(var SalesHeader: Record "Sales Header")
    var
        SalesSetup: Record "Sales & Receivables Setup";
        ArchiveManagement: Codeunit ArchiveManagement;
    begin
        SalesSetup.Get();

        case SalesSetup."Archive Quotes" of
            SalesSetup."Archive Quotes"::Always:
                ArchiveManagement.ArchSalesDocumentNoConfirm(SalesHeader);
            SalesSetup."Archive Quotes"::Question:
                ArchiveManagement.ArchiveSalesDocument(SalesHeader);
        end;
    end;
}