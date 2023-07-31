pageextension 50138 SalesOrderSubformPagExt extends "Sales Order Subform"
{
    layout
    {
        addafter("Item Reference No.")
        {
            field(Name; Rec."Name")
            {
                ApplicationArea = All;
                Caption = 'Name';
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