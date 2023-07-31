page 50131 ItemPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = ItemTable;

    layout
    {
        area(Content)
        {
            group(GroupName)
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
                field(City; Rec.City)
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