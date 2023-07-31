pageextension 50102 ItemCardPageExt extends "Item Card"
{
    layout
    {
        // Add changes to page layout here
        addafter("Unit Price")
        {
            field(Name; Rec.Name)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies Name';
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