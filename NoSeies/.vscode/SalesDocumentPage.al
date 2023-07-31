page 50130 SalesDocument
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = "Documents";
    SourceTable = SalesHeaderTable;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                Caption = 'General';
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    Caption = 'No';
                }
                field("Document Date"; Rec."Document Date")
                {
                    ApplicationArea = All;
                    Caption = 'Document Date';
                }
                field(Series1; Rec.Series1)
                {
                    ApplicationArea = All;
                    Caption = 'Series1';
                }
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = All;
                    Caption = 'Document No';
                }
                field("Department Code"; Rec."Department Code")
                {
                    ApplicationArea = All;
                    Caption = 'Department Code';

                }
            }
            part(Lines; SalesLineSubPage)
            {
                ApplicationArea = All;
                SubPageLink = "Document No" = field("No.");
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