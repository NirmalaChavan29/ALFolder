page 50100 "ChickenCard"
{
    Caption = 'Chicken Card';
    PageType = Card;
    SourceTable = Chicken;
    layout
    {
        area(Content)
        {
            group(GroupName)
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
                field("Chicken Type Description"; Rec."Chicken Type Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the chicken Type Description';
                }
                field("Number of eggs Produced"; Rec."Number of eggs Produced")
                {
                    ApplicationArea = All;
                    ToolTip = 'The total number of eggs produced by chicken';
                }
                field("Egg Type Code"; Rec."Egg Type Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'The total number of eggs produced by chicken';
                    TableRelation = "Egg Production Line";

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