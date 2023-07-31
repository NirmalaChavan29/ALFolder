page 50120 "Sales Prices Factbox"
{
    PageType = ListPart;
    Caption = 'Sales Price Factbox';
    Editable = false;
    SourceTable = "Sales Price";

    layout
    {
        area(Content)
        {

            repeater(general)
            {
                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = All;
                }
                field("Sales code"; Rec."Sales code")
                {
                    ApplicationArea = All;
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    ApplicationArea = All;
                }
                field("Minimum Quantity"; Rec."Minimum Quantity")
                {
                    ApplicationArea = All;
                }
                field("Unit of measure code"; Rec."Unit of measure code")
                {
                    ApplicationArea = All;
                }
            }
        }

    }
}