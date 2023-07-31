pageextension 50121 SalesOrderPageExt extends "Sales Order"
{
    layout
    {
        addfirst(factboxes)
        {
            part(SalesPricesFactbox; "Sales Prices Factbox")
            {
                Provider = SalesLines;
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