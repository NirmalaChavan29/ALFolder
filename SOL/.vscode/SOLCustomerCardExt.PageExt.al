pageextension 50111 "SOL CustomerCard" extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addlast(General)
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
                SubPageLink = "Customer No." = field("No.");
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