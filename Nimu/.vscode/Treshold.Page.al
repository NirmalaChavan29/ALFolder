page 50130 "Treshold Setup"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = "Administration";
    SourceTable = "Treshold Setup";
    InsertAllowed = false;
    DeleteAllowed = false;
    Caption = 'Treshold Setup';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Treshold 1 Value"; Rec."Treshold 1 Value")
                {
                    ApplicationArea = All;

                }
                field("Treshold 1 Style"; Rec."Treshold 1 Style")
                {
                    ApplicationArea = All;

                }
                field("Treshold 2 Value"; Rec."Treshold 2 Value")
                {
                    ApplicationArea = All;

                }
                field("Treshold 2 Style"; Rec."Treshold 2 Style")
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        if not Get() then Insert();
    end;

    var
        myInt: Integer;
}