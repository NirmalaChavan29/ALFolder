page 50100 "Sales Prices Factbox"
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
                field("Item no"; Rec."Item no")
                {
                    ApplicationArea = All
                }
                field("Sales code"; Rec."Sales code")
                {
                    ApplicationArea = All;
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    ApplicationArea = All
                }
                field("Minimum Quantity"; Rec."Minimun Quantity")
                {
                    ApplicationArea = All;
                }
                field("Unit of measure code"; Rec."Unit of measure code")
                {
                    ApplicationArea = All;
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