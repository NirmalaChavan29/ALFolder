report 50104 "Harting Inventory Adjustment"
{
    DefaultLayout = RDLC;
    RDLCLayout = './HartingInventoryAdj.rdl';
    ApplicationArea = All;
    Caption = 'Harting Inventory Adjustment1';
    UsageCategory = ReportsAndAnalysis;


    dataset
    {
        dataitem("Item Ledger Entry"; "Item Ledger Entry")
        {
            DataItemTableView = sorting("Item No.");
            RequestFilterFields = "Item No.", "Posting Date";
            column(CompanyName; CompanyInfo.Name)
            {

            }
            column(Item_No_; "Item No.")
            {

            }
            column(Description; Description)
            {

            }
            column(Remaining_Quantity; "Remaining Quantity")
            {

            }
            column(UnitCost; UnitCost)
            {

            }
            column(UnitPrice; UnitPrice)
            {

            }
            column(Qty; Qty)
            {

            }
            column(QtyToInvoice; QtyToInvoice)
            {

            }
            column(Des; Des)
            {

            }
            trigger OnAfterGetRecord()
            begin
                Item.SetRange("No.", "Item No.");
                if Item.Find('-') then begin
                    UnitCost := Item."Unit Cost";
                    UnitPrice := Item."Unit Price";
                    Des := Item.Description;

                end;

                SaleLine.SetRange("No.", "Item No.");
                if SaleLine.Find('-') then begin
                    Qty := SaleLine.Quantity;
                    QtyToInvoice := SaleLine."Qty. to Invoice";
                end;
            end;

            trigger OnPreDataItem()
            begin
                CompanyInfo.get();
            end;

        }
    }



    var
        PostingDate: Date;
        UnitCost: Decimal;
        UnitPrice: Decimal;
        Item: Record Item;
        ItemLeg: Record "Item Ledger Entry";
        CompanyInfo: Record "Company Information";
        SaleLine: Record "Sales Line";
        Qty: Decimal;
        QtyToInvoice: Decimal;
        Des: Text[100];

}
