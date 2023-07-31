pageextension 50137 CustomerListPagExt extends "Customer List"
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

