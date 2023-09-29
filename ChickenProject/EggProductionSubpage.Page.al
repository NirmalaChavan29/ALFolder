page 50108 "Egg Production SubPage"
{
    PageType = ListPart;
    SourceTable = "Egg Production Line";
    AutoSplitKey = true;
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Chicken No"; Rec."Chicken No")
                {
                    ApplicationArea = All;

                }
                field("Chicken Description"; Rec."Chicken Description")
                {
                    ApplicationArea = All;

                }
                field("Egg Production Date"; Rec."Egg Production Date")
                {
                    ApplicationArea = All;

                }
                field("Egg Type Code"; Rec."Egg Type Code")
                {
                    ApplicationArea = All;

                }
                field("Egg Type Description"; Rec."Egg Type Description")
                {
                    ApplicationArea = All;

                }
                field("Quantity"; Rec."Quntity")
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