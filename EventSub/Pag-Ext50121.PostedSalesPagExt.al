pageextension 50121 PostedSalesPagExt extends "Posted Sales Invoice"
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
            field(Description; Rec.Description)
            {
                ApplicationArea = All;
                Caption = 'Description';
                ShowMandatory = true;
            }
            field(Address2; Rec.Address2)
            {
                ApplicationArea = All;
                Caption = 'Address2';
            }
        }
    }
}
