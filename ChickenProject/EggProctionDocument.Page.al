page 50109 "Egg Production Document"
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = "Documents";
    SourceTable = "Egg Production";
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                Caption = 'General';
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;

                }
                field("Document Date"; Rec."Document Date")
                {
                    ApplicationArea = All;

                }

            }

            part(Lines; "Egg Production Subpage")
            {
                ApplicationArea = All;
                SubPageLink = "Document No" = field("No.");
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

}

