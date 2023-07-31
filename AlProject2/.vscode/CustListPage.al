page 50106 CustListPage
{
    PageType = list;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = NewHeaderTable;
    CardPageId = "CustCardDocumentPage";
    Editable = false;
    Caption = 'Cust List Page';

    layout
    {
        area(Content)
        {
            repeater(General)
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
                field("Code"; Rec."Code")
                {
                    ApplicationArea = All;

                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;

                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;

                }
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;

                }
                field(Country; Rec.Country)
                {
                    ApplicationArea = All;

                }
                field(Email; Rec.Email)
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