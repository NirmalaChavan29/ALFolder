pageextension 50129 SaleOrderExt extends "Sales Order"
{
    layout
    {
        // Add changes to page layout here
        addafter("No.")
        {
            field("Location1"; Rec.Location1)
            {
                ApplicationArea = All;
                Caption = 'Location1';
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}