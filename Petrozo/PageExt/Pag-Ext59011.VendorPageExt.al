pageextension 59011 _Vendor_PageExt extends "Vendor Card"
{
    layout
    {
        addafter("Location Code")
        {
            field("Import Code"; Rec."Import Code")
            {
                ApplicationArea = All;

            }
        }
    }
}
