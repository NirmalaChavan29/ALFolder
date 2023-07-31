page 50127 "SOL Grade History Factbox"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "SOL Grade History";
    Editable = false;
    DataCaptionFields = "Customer No.", "Customer Name";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Customer Name';
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Customer No.';
                }
                field("DateTime"; Rec.DateTime)
                {
                    ApplicationArea = All;
                    ToolTip = 'DateTime';
                }
                field("Document Date"; Rec."Document Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Document Date';
                }
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Document No.';
                }
                field("Document Type"; Rec."Document Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Document Type';
                }
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Entry No.';
                }
                field("Grade"; Rec.Grade)
                {
                    ApplicationArea = All;
                    ToolTip = 'Grade';
                }
                field("Grade Description"; Rec."Grade Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Grade Description';
                }
                field("User Id"; Rec."User ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'User ID';
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