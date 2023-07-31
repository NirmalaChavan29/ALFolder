pageextension 50122 "SOL Buisness Manager RC Ext" extends "Business Manager Role Center"
{
    layout
    {
        addbefore("Favorite Accounts")
        {
            part(SalesQuotesWon; "SOL Sales Quote Status List")
            {
                Caption = 'Your won Sales Quotes';
                ApplicationArea = All;
                SubPageView = where("SOL Won/Lost quote status" = const("Won"));
            }
            part(SalesQuotesLost; "SOL Sales Quote Status List")
            {
                Caption = 'Your lost Sales Quotes';
                ApplicationArea = All;
                SubPageView = where("SOL Won/Lost quote status" = const("Lost"));
            }
        }
        // Add changes to page layout here
    }

    local procedure GetQuoteRecords(WonLostStatus: Enum "SOL Won/Lost Status"; SalespersonCode: Code[20])
    var
        SalesHeader: Record "Sales Header";
        NoOfRecords: Integer;
    begin
        SalesHeader.Reset();
        SalesHeader.SetRange("Document Type", SalesHeader."Document Type"::Quote);
        SalesHeader.SetRange("Salesperson Code", SalespersonCode);
        SalesHeader.SetRange("SOL Won/Lost Quote Status", WonLostStatus);
        SalesHeader.SetRange("SOL Won/Lost Date", AddDaysToDateTime(CurrentDateTime(), -5), CurrentDateTime());
        NoOfRecords := SalesHeader.Count();

        if NoOfRecords <> 0 then
            SendNoOfQuoteNotification(NoOfRecords, WonLostStatus, SalespersonCode);

    end;

    Local procedure AddDaysToDateTime(SaourceDateTime: DateTime; NoOfDays: Integer): DateTime
    begin
        exit(SaourceDateTime + (NoOfDays * 8640000))
    end;

    Local procedure SendNoOfQuoteNotification(NoOfQuotes: Integer; WonLostStatus: Enum "SOL Won/Lost Status"; SalespersonCode: Code[20])
    var
        QuoteNotification: Notification;
        YouWonLostQuoteMsg: Label 'You %1 ''%2'' quote(s) during the last 5 days.', Comment = '%1 = Won/Lost ; %2 = No of quotes';
        ShowQuoteslbl: Label 'Show %1 Quotes', Comment = '%1 = Won/Lost';
    begin
        QuoteNotification.Message := StrSubstNo(YouWonLostQuoteMsg, WonLostStatus, NoOfQuotes);
        QuoteNotification.SetData('SalespersonCode', SalespersonCode);
        QuoteNotification.SetData('WonLostStatus', Format(WonLostStatus.AsInteger()));
        QuoteNotification.AddAction(StrSubstNo(ShowQuoteslbl, WonLostStatus), Codeunit::"SOL Quote Status Mgmt", 'OpenQuotes');
        QuoteNotification.Send();
    end;

    Local procedure OpenQuotes(QuoteNotification: Notification)
    var
        SalesHeader: Record "Sales Header";
        WonLostStatus: Enum "SOL Won/Lost Status";
        SalespersonCode: Code[20];
        WonLOstStatusInteger: Integer;
    begin
        SalespersonCode := CopyStr(QuoteNotification.GetData('SlaespersonCode'), 1, MaxStrLen(SalespersonCode));
        Evaluate(WonLOstStatusInteger, QuoteNotification.GetData(('WonLostStatus')));
        WonLostStatus := "SOL Won/Lost Status".FromInteger(WonLostStatusInteger);

        FilterQuotes(SalesHeader, WonLostStatus, SalespersonCode);
        if SalesHeader.FindSet() then
            Page.Run(Page::"Sales Quotes", SalesHeader);

    end;

    local procedure FilterQuotes(var SalesHeader: Record "Sales Header"; WonLostStatus: Enum "SOL Won/Lost Status"; SalespersonCode: Code[20])
    begin
        SalesHeader.Reset();
        SalesHeader.SetRange("Document Type", SalesHeader."Document Type"::Quote);
        SalesHeader.SetRange("Salesperson Code", SalespersonCode);
        SalesHeader.SetRange("SOL Won/Lost Quote Status", WonLostStatus);
        SalesHeader.SetRange("SOL Won/Lost Date", AddDaysToDateTime(CurrentDateTime(), -5), CurrentDateTime());

    end;

}