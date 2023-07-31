pageextension 59005 "Posted Whs Shipment Subform" extends "Posted Whse. Shipment Subform"
{
    layout
    {
        addafter(Quantity)
        {
            field("HS Code"; Rec."HS Code")
            {
                ApplicationArea = all;
                Editable = false;
            }
        }
    }
}
