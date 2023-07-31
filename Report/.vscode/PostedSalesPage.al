pageextension 50123 PostedPageExt extends "Posted Sales Invoice"
{
    layout
    {
        // Add changes to page layout here
        addafter("No.")
        {
            field("Code"; Rec."Code")
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