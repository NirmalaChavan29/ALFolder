page 50108 Egg1TypePge
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = 50102;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Code"; Rec."Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is Egg Type Code';
                    
                }
                 field("Description"; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'This is Egg Type Description';
                    
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