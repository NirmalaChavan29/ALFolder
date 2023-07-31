pageextension 59000 "Posted sales invoice" extends "Posted Sales Invoice"
{

    actions

    {
        addafter("REDM Tax Invoice")
        {
            action("Tax Invoice")
            {
                Caption = 'Commercial Invoice';
                ApplicationArea = all;
                Promoted = true;
                PromotedCategory = Category6;
                Image = SalesTax;
                // RunObject = report "Commercial Invoice Bulk_Green";
                trigger OnAction()
                var
                    postedsalesinvoice: Record "Sales Invoice Header";
                begin
                    postedsalesinvoice.Reset();
                    postedsalesinvoice.SetRange("No.", rec."No.");
                    report.RunModal(55010, true, false, postedsalesinvoice);
                    // REPORT.RunModal(REPORT::"Commercial Invoice Bulk_Green", true, false, postedsalesinvoice);
                end;
            }

        }


    }

    var
        myInt: Integer;

}
pageextension 59012 genralledgerext extends "General Ledger Entries"
{
    actions
    {
        addafter("&Navigate")
        {
            action("Posted Voucher")
            {
                ApplicationArea = all;
                Promoted = true;
                PromotedCategory = Report;
                Image = PostDocument;
                trigger OnAction()
                var
                    postedsale: Record "G/L Entry";
                begin
                    postedsale.Reset();
                    postedsale.SetRange("Document No.", Rec."Document No.");
                    postedsale.SetRange("Posting Date", rec."Posting Date");
                    report.RunModal(55118, true, false, postedsale);

                end;

            }
        }
    }
}