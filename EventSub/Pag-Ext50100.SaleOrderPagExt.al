pageextension 50112 SaleOrderPagExt extends "Sales Order"
{
    layout
    {
        addafter("No.")
        {
            field(Name; Rec."Name")
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
            field(Address2; Rec.Adreess2)
            {
                ApplicationArea = All;
                Caption = 'Address2';
            }
        }
    }
}
