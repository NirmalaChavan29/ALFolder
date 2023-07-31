page 50138 "Customer Reminders Factbox"
{
    Caption = 'Customer Reminder Factbox';
    PageType = ListPart;
    Editable = false;
    SourceTable = "Reminder/Fin. Charge Entry";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;

                }
                field("PostingDate"; Rec."Posting Date")
                {
                    ApplicationArea = All;

                }
                field("User Id"; Rec."User ID")
                {
                    ApplicationArea = All;

                }
                field("Document Date"; Rec."Document Date")
                {
                    ApplicationArea = All;

                }
                field("Document Type"; Rec."Document Type")
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}