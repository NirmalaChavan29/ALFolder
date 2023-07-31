pageextension 59010 "Purchase Invoice Subform" extends "Posted Purch. Invoice Subform"
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
