pageextension 59007 "Purchase Order Subform" extends "Purchase Order Subform"
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
