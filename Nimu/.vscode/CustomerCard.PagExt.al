pageextension 50135 CustomerCardPagExt extends "Customer Card"
{
    layout
    {
        addfirst(factboxes)
        {
            part(CustomerRemindersFactbox; "Customer Reminders Factbox")
            {
                SubPageLink = "Customer No." = field("No.");
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

