pageextension 59008 "Whs Rcp Line" extends "Whse. Receipt Subform"
{
    layout
    {
        addafter(Quantity)
        {
            field("HS Code"; Rec."HS Code")
            {
                ApplicationArea = all;
                //Editable = false;
            }
        }
    }
}
