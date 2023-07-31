pageextension 50127 "SOL Sales Quote Archive Ext" extends "Sales Quote Archive"
{
    layout
    {
        // Add changes to page layout here
        addafter("Due Date")
        {
            field("Quote Status"; Rec."SOL Won/Lost Quote Status")
            {
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specifies the Status of quote.';
            }
            field("Won/Lost Date"; Rec."SOL Won/Lost Date")
            {
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specifies the date this quote was closed';
            }
            field("Won/Lost Reason Code"; Rec."SOL Won/Lost Reason Code")
            {
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specifies the reason closing the quote';
            }
            field("Won/Lost Reason Desc."; Rec."SOL Won/Lost Reason Desc.")
            {
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specifies the reason closing the quote';
            }
            field("Won/Lost Remarks"; Rec."SOL Won/Lost Remarks")
            {
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specified an extra remark on the quote status';
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