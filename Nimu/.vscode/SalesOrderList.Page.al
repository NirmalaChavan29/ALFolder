pageextension 50132 SalesOrderListPageExt extends "Sales Order List"
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


}

