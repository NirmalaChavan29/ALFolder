page 50102 "Chicken Type"
{
    PageType = List;
    ApplicationArea = All;
    Caption = 'Chicken Types';
    UsageCategory = Lists;
    SourceTable = "Chicken Types";

    layout
    {
        area(Content)
        {
            repeater(general)
            {
                field(Code; Rec.Code)
                {
                    ApplicationArea = All;
                    ToolTip = 'Enter the Chicken Type code';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Enter the chicken Type description';
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