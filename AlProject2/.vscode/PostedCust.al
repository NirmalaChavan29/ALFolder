page 50108 PostedCustList
{
    Caption = 'Posted Cust Order';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = PostedCustHeaderTable;
    CardPageId = PostedCardDocumentPage;

    layout
    {
        area(Content)
        {
            repeater(general)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;

                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;

                }
                field("Date"; Rec."Date")
                {
                    ApplicationArea = All;

                }
                field(Address; Rec.Address)
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