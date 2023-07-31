pageextension 50112 PurchaseOrderExt extends "Purchase Order"
{
    layout
    {

    }
    actions
    {
        addafter(Print)
        {
            action(PurchaseOrder)
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

                    REPORT.RUNMODAL(50115, TRUE, TRUE, PurchaseHeader);
                end;
            }
        }

    }

    var
        PurchaseHeader: Record "Purchase Header";
}