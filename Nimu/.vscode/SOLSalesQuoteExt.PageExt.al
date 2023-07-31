pageextension 50128 "SOL Sales Quote Ext" extends "Sales Quote"
{
    layout
    {
        // Add changes to page layout here
        addafter("Due Date")
        {
            field("Quote Status"; Rec."SOL Won/Lost Quote Status")
            {
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specifies the Status of quote.';
            }
            field("Won/Lost Date"; Rec."SOL Won/Lost Date")
            {
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specifies the date this quote was closed';
            }
            field("Won/Lost Reason Code"; Rec."SOL Won/Lost Reason Code")
            {
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specifies the reason closing the quote';
            }
            field("Won/Lost Reason Desc."; Rec."SOL Won/Lost Reason Desc.")
            {
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specifies the reason closing the quote';
            }
            field("Won/Lost Remarks"; Rec."SOL Won/Lost Remarks")
            {
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specified an extra remark on the quote status';
            }
        }

    }

    actions
    {
        // Add changes to page actions here
        addfirst(Create)
        {
            action(CloseQuote)
            {
                ApplicationArea = All;
                Caption = '&Close Quote';
                Image = Close;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ToolTip = 'Closes the Sales Quote and archives.';
                trigger OnAction()
                var
                    QuoteStatusMgmt: Codeunit "SOL Quote Status Mgmt";
                begin
                    if Page.RunModal(Page::"SOL Close Quote", Rec) = Action::LookupOk then
                        QuoteStatusMgmt.CloseQuote(Rec);
                end;
            }
        }
    }

    var
        myInt: Integer;
}