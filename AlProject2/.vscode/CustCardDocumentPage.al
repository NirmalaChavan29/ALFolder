page 50105 CustCardDocumentPage
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "NewHeaderTable";


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
            part(Lines; "CustCardSubpage")
            {
                ApplicationArea = All;
                SubPageLink = "Item No" = field("No.");
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(PostedCust)
            {
                ApplicationArea = All;
                Caption = 'Post';
                RunObject = page "50108";

                trigger OnAction()


                begin

                    Post.Init();
                    Post."No." := Rec."No.";
                    Post."Name" := Rec.Name;
                    Post.Description := Rec.Description;
                    PostLine."Item No" := Line."Item No";
                    PostLine."Line Discount" := Line."Line Discount";

                    Post.Insert();
                    Rec.Delete();
                    CurrPage.Close();

                end;
            }
        }
    }

    var
        myInt: Integer;
        Post: Record PostedCustHeaderTable;
        PostLine: Record PostedCustLineTable;
        Line: Record NewLineTable;

}