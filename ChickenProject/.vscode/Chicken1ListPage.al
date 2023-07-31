page 50106 Chicken1ListPage
{
    ApplicationArea = All;
    Caption = 'Chicken1 List';
    PageType = List;
    UsageCategory = Lists;
    SourceTable = "50100";
    Editable = false;
    CardPageId = "50104";
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("No.";Rec."No.")
                {
                    ApplicationArea = All;
ToolTip = 'This is the chicken no';
                }
                field("Description";Rec.Description)
                {
                    ApplicationArea = All;
                ToolTip = 'This is the chicken Description';
                }
                field("Chicken Type Code";Rec."Chicken Type Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the chicken Type Code';
                }
            }

    }
    

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