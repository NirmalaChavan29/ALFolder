pageextension 50141 ItemCardExt extends "Item Card"
{
    layout
    {
        addfirst(factboxes)
        {
            part(SalesPricesFactbox; "Sales Prices Factbox")
            {
                SubPageLink = "Item No." = field("No.");
                ApplicationArea = All;
            }
        }
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}