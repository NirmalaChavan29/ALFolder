pageextension 50123 SalesOrderPageExt extends "Sales Order"
{
    layout
    {
        addafter("No.")
        {
            field("Document Name"; Rec."Document Name")
            {
                ApplicationArea = All;
                Caption = 'Document Name';

            }
        }
    }
}
