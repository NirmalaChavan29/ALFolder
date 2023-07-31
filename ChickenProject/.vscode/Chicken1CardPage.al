page 50104 Chicken1CardPage
{
    PageType = Card;
    Caption = 'Chicken Card';
    SourceTable = Chicken1;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No.";Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'No.';
                }
                field("Description";Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Description';
                }
                field("Chicken1 Type Code";Rec."Chicken Type Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Chicken Type Code';
                    
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