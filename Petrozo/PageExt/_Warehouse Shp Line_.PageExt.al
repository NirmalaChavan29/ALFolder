pageextension 59004 "Warehouse Shp Line" extends "Whse. Shipment Subform"
{
    layout
    {
        addafter(Quantity)
        {
            field("HS Code"; Rec."HS Code")
            {
                ApplicationArea = all;
            }
        }
    }
}
