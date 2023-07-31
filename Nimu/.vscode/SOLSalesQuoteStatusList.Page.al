page 50129 "SOL Sales Quote Status List"
{
    PageType = ListPart;
    SourceTableView = where("Document Type" = const(Quote));
    Editable = false;
    InsertAllowed = false;
    DeleteAllowed = false;
    ModifyAllowed = false;
    SourceTable = "Sales Header";

    layout
    {
        area(Content)
        {
            repeater(rep)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the no of this quote';
                    trigger OnDrillDown()
                    begin
                        page.Run(Page::"Sales Quote", Rec);
                    end;
                }
                field("Sell-to Customer Name"; Rec."Sell-to Customer Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer name linked to this quote.';
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies total amount of the quote.';
                }
                field("SOL Won/Lost Date"; Rec."SOL Won/Lost Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specified the date this quote was closed';
                }
                field("SOL Won/Lost Reason"; Rec."SOL Won/Lost Reason Desc.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the reason closing the quote';
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        GetQuotesForCurrentUser();
    end;

    local procedure GetQuotesForCurrentUser()
    var
        QuoteStatusMgmt: Codeunit "SOL Quote Status Mgmt";
        SalespersonCode: Code[20];
    begin
        SalespersonCode := QuoteStatusMgmt.GetSalespersonForLoggedInUser();
        FilterGroup(2);
        SetRange("SAlesperson Code", SAlespersonCode);
        FilterGroup(0);
    end;
}