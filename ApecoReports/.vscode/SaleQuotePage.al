pageextension 50115 SalesQuoteExt extends "Sales Quote"
{
    layout
    {

    }
    actions
    {
        addafter(Print)
        {
            action(PrintSaleQuote)
            {
                Promoted = true;

                PromotedIsBig = true;

                ApplicationArea = all;

                Image = Report;

                PromotedCategory = Report;

                trigger OnAction()

                BEGIN

                    SalesHeader.RESET;

                    SalesHeader.SETRANGE("No.", rec."No.");

                    REPORT.RUNMODAL(50116, TRUE, TRUE, SalesHeader);
                end;
            }
        }

    }

    var
        SalesHeader: Record "Sales Header";
}