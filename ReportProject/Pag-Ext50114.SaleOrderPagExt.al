pageextension 50114 SaleOrderPagExt extends "Sales Order Subform"
{
    layout
    {
        addafter("No.")
        {
            field(City; Rec.City)
            {
                ApplicationArea = All;

            }
        }
    }
}
