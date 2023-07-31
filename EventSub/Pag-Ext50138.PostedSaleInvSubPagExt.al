pageextension 50139 PostedSaleInvSubPagExt extends "Posted Sales Invoice Subform"
{
    layout
    {
        addafter("No.")
        {
            field(Name; Rec.Name)
            {
                ApplicationArea = All;
                Caption = 'Name';
            }
            field(Address2; Rec.Address2)
            {
                ApplicationArea = All;
                Caption = 'Address2';
            }
        }
    }
}
