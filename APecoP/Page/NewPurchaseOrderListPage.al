pageextension 60105 NewPurchaseOrderList extends "Purchase Order List"
{


    actions
    {
        addafter(Print)
        {
            action(Print1)
            {
                ApplicationArea = All;
                Caption = '&Purchase Order Schneider';
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
                    Report.RunModal(60102, true, false, PurchaseHeader);
                end;
            }
        }
    }


    var
        myInt: Integer;
}