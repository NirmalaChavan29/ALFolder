pageextension 50111 PurchaseQuoteExt extends "Purchase Quote"
{
    layout
    {

    }
    actions
    {
        addafter(Print)
        {
            action("Purchase Inquiry")
            {
                Promoted = true;

                PromotedIsBig = true;

                ApplicationArea = all;

                Image = Report;

                PromotedCategory = Report;

                trigger OnAction()

                BEGIN

                    PurchaseHeader.RESET;

                    PurchaseHeader.SETRANGE("No.", rec."No.");

                    REPORT.RUNMODAL(50114, TRUE, TRUE, PurchaseHeader);
                end;
            }
        }

    }

    var
        PurchaseHeader: Record "Purchase Header";
}