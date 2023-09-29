page 50111 "Egg Production Line List"
{
    PageType = List;
    UsageCategory = None;
    SourceTable = "Egg Production Line";
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Chicken No"; Rec."Chicken No")
                {
                    ApplicationArea = All;

                }
                field("Chicken Description"; Rec."Chicken Description")
                {
                    ApplicationArea = All;

                }
                field("Document No"; Rec."Document No")
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
                field("Quantity"; Rec.Quntity)
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