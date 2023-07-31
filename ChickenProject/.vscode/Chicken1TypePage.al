page 50107 Chicken1TypePage
{
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = 50101;
    Caption = 'Chicken Type';
    PageType  = List;
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Code";Rec."Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Enter Chicken Type Code';
                }
                 field("Description";Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Enter Chicken Type Description';
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