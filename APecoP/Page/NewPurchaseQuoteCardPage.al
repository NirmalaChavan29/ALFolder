pageextension 60108 NewPurchaseQuoteCard extends "Purchase Quote"
{
    actions
    {
        addafter(Print)
        {
            action(Print1)
            {
                ApplicationArea = All;
                Caption = '&Purchase Inquiry';
                Image = Print;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Report;
                trigger OnAction()
                var
                    PurchaseHeader: Record "Purchase Header";
                begin
                    PurchaseHeader.Reset();
                    PurchaseHeader.SetRange("No.", Rec."No.");
                    Report.RunModal(60101, true, false, PurchaseHeader);
                end;
            }
        }
    }

    var
        myInt: Integer;
}