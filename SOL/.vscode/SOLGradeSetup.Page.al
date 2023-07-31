page 50105 "SOL Grade Setup"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "SOL Grade Setup";
    Caption = 'Grade Setup';
    InsertAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            group(Numbering)
            {
                Caption = 'Numbering';
                field("Grade Nos."; rec."Grade Nos.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Grade Nos.';

                }
            }
        }
    }
    trigger OnOpenPage()
    begin
        if not rec.Get() then
            rec.Insert();
    end;
}
