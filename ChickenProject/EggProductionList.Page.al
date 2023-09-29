page 50110 "Egg Production List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    Editable = false;
    Caption = 'Egg Production List';
    SourceTable = "Egg Production";
    CardPageId = "Egg Production Document";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;

                }
                field("Document Date"; Rec."Document Date")
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
            action(PostedProduction)
            {
                Caption = 'Post';
                ApplicationArea = All;
                RunObject = Page "50114";
            }

        }
    }
    var
        myInt: Integer;
}