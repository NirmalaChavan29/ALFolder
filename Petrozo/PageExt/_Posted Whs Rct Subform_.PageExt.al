pageextension 59009 "Posted Whs Rct Subform" extends "Posted Whse. Receipt Subform"
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
