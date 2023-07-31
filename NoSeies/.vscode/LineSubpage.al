page 50133 SalesLineSubPage
{
    PageType = ListPart;
    SourceTable = SalesLineTable;
    AutoSplitKey = true;
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Line No"; Rec."Line No")
                {
                    ApplicationArea = All;
                    Caption = 'No';

                }
                field("Item No"; Rec."Item No")
                {
                    ApplicationArea = All;
                    Caption = 'Item No';

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    Caption = 'Description';

                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                    Caption = 'Quantity';

                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                    Caption = 'City';

                }
                field("Unit of Measure Code"; Rec."Unit of Measure Code")
                {
                    ApplicationArea = All;
                    Caption = 'Unit of measure code';

                }
                field("Line Discount"; Rec."Line Discount")
                {
                    ApplicationArea = All;
                    Caption = 'Line Discount';

                }
                field("Quantity  to ship"; Rec."Quantity  to ship")
                {
                    ApplicationArea = All;
                    Caption = 'Quantity to Ship';

                }
                field("Shipment Date"; Rec."Shipment Date")
                {
                    ApplicationArea = All;
                    Caption = 'Shipment Date';

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