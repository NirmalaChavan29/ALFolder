pageextension 59003 "sales Order Subform" extends "Sales Order Subform"
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
