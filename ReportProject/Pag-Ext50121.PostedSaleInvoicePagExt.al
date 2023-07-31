pageextension 50120 PostedSaleInvoicePagExt extends "Posted Sales Invoice Subform"
{
    layout
    {
        addafter("No.")
        {
            field(City; Rec.City)
            {
                ApplicationArea = All;
                Caption = 'City';
            }
        }
    }
}
