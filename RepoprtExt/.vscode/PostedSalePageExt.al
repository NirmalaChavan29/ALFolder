pageextension 50128 PostedPageExt extends "Posted Sales Invoice"
{
    layout
    {
        // Add changes to page layout here
        addafter("No.")
        {
            field("Location1"; Rec."Location1")
            {
                ApplicationArea = All;
                Caption = 'Code';
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