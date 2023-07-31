page 50111 PostedCustCardSubpage
{
    PageType = ListPart;
    SourceTable = PostedCustLineTable;
    AutoSplitKey = true;
    DelayedInsert = true;


    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Item No"; Rec."Item No")
                {
                    ApplicationArea = All;

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;

                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;

                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;

                }
                field("Unit of Measure Code"; Rec."Unit of Measure Code")
                {
                    ApplicationArea = All;

                }
                field("Line Discount"; Rec."Line Discount")
                {
                    ApplicationArea = All;

                }
                field("Quantity  to ship"; Rec."Quantity  to ship")
                {
                    ApplicationArea = All;

                }
                field("Shipment Date"; Rec."Shipment Date")
                {
                    ApplicationArea = All;

                }
                field("Deparment Code"; Rec."Deparment Code")
                {
                    ApplicationArea = All;

                }
                field("Type"; Rec."Type")
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