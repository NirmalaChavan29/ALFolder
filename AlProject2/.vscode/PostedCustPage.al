page 50100 PostedCardDocumentPage
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = PostedCustHeaderTable;
    Editable = false;


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
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;

                }
            }
            part(Lines; PostedCustCardSubpage)
            {
                ApplicationArea = All;
                SubPageLink = "Item No" = field("No.");
            }
        }
    }


}