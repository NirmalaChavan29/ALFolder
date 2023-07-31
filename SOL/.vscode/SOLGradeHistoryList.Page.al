page 50122 "SOL Grade History List"
{
    PageType = List;
    Caption = 'Grade History List';
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "SOL Grade History";
    Editable = false;
    DataCaptionFields = "Customer No.","Customer Name";
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Entry No.';
                }
                field("Document Type"; Rec."Document Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Document Type';
                }
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Document No.';
                }
                field("Document Date"; Rec."Document Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Document Date';
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Customer No.';
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Customer Name';
                }
                field("DateTime"; Rec.DateTime)
                {
                    ApplicationArea = All;
                    ToolTip = 'DateTime';
                }
                field("User Id"; Rec."User ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'User ID';
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