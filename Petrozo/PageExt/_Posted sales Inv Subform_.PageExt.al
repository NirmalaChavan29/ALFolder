pageextension 59006 "Posted sales Inv Subform" extends "Posted Sales Invoice Subform"
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
