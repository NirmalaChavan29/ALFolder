pageextension 50114 "SOL CustomerLedgerEntries" extends "Customer Ledger Entries"
{
    layout
    {
        // Add changes to page layout here
        addlast(Control1)
        {
            field("SOL Grade"; Rec."SOL Grade")
            {
                ApplicationArea = All;
                ToolTip = 'SOL Grade';
            }
            field("SOL Grade Description"; Rec."SOL Grade Description")
            {
                ApplicationArea = All;
                ToolTip = 'SOL Grade Description';
            }
        }
        addfirst(factboxes)
        {
            part(GradeHistory; "SOL Grade History Factbox")
            {
                ApplicationArea = All;
                SubPageLink = "Customer No." = field("Customer No.");
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