pageextension 50103 ValueEntryPageExt extends "Value Entries"
{
    layout
    {
        // Add changes to page layout here
        addafter("No.")
        {
            field(Name; Rec.Name)
            {
                ApplicationArea = All;
                Caption = 'Name';
            }
            field(Address2; Rec.Address2)
            {
                ApplicationArea = All;
                Caption = 'Address2';
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