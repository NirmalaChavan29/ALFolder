page 50131 "Install Page"
{
    PageType = List;
    Caption = 'Install Code Page';
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = InstallTable;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;

                }
                field("Install Text"; Rec."Install Text")
                {
                    ApplicationArea = All;

                }
                field("Upgrade Text"; Rec."Upgrade Text")
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