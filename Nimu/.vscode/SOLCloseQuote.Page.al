page 50123 "SOL Close Quote"
{
    Caption = 'Close Quote';
    DeleteAllowed = false;
    InsertAllowed = false;
    LinksAllowed = false;
    PageType = Card;
    UsageCategory = None;
    SourceTable = "Sales Header";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                Caption = 'General';
                field(QuoteWon; Rec."SOL Won/Lost Quote Status")
                {
                    ApplicationArea = All;
                    Editable = AllowChangeStatus;
                    ToolTip = 'Specifies the status of quote';
                }
                field("Won/Lost Date"; Rec."SOL Won/Lost Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specified the data this quote was closed';
                }
                field("Won/Lost Reason"; Rec."SOL Won/Lost Reason Code")
                {
                    ApplicationArea = All;
                    Editable = AllowChangeStatus;
                    ToolTip = 'Specifies the reason closing the quote';
                }
                field("Won/Lost Reason Desc."; Rec."SOL Won/Lost Reason Desc.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the reason closing the quote';
                }
                field("Won/Lost Remarks"; Rec."SOL Won/Lost Remarks")
                {
                    Caption = 'Remarks';
                    ApplicationArea = All;
                    Multiline = true;
                    Editable = AllowChangeStatus;
                    ToolTip = 'Specified an extra remark on the quote status';
                }


            }
        }
    }
    var
        AllowChangeStatus: Boolean;

    trigger OnOpenPage()
    begin
        AllowChangeStatus := Rec."SOL Won/Lost Quote Status" <> "SOL Won/Lost Status"::"Won";
    end;

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    begin
        if CloseAction = Action::LookupOK then
            FinishWizard();
    end;

    Local procedure FinishWizard()
    var
        MustSelectWonOrLostErr: Label 'You must select Won/Lost.';
        FieldMustBeFilledInErr: Label 'You must fill in the %1 field', Comment = '%1 =Caption of the field';
    begin
        if not ("SOL Won/Lost Quote Status" in ["SOL Won/Lost Status"::Won, "SOL Won/Lost Status"::Lost]) then
            Error(MustSelectWonOrLostErr);

        if "SOL Won/Lost Reason Code" = '' then
            Error(FieldMustBeFilledInErr, FieldCaption("SOL Won/Lost Reason Code"));
        Modify();
    end;



}