page 50101 "Chicken List"
{
    PageType = List;
    ApplicationArea = All;
    Caption = 'Chicken list';
    UsageCategory = Lists;
    SourceTable = Chicken;
    Editable = false;
    CardPageId = "50100";

    layout
    {
        area(Content)
        {
            repeater(general)
            {
                field(No; Rec.No)
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the chicken no';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the chicken description';
                }
                field("Chicken Type code"; Rec."Chicken Type code")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the chicken Type Code';
                }
                field("Number of eggs Produced"; Rec."Number of eggs Produced")
                {
                    ApplicationArea = All;
                    ToolTip = 'The total number of eggs produced by chicken';
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