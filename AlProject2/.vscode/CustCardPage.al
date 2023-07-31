page 50103 CustCardPage
{
    PageType = CardPart;
    Caption = 'Cust Card Page';
    SourceTable = NewHeaderTable;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;

                }
                field("Name"; Rec."Name")
                {
                    ApplicationArea = All;

                }
                field("Description"; Rec."Description")
                {
                    ApplicationArea = All;

                }
                field("Code"; Rec."Code")
                {
                    ApplicationArea = All;

                }
                field("Date"; Rec."Date")
                {
                    ApplicationArea = All;

                }
                field("Address"; Rec."Address")
                {
                    ApplicationArea = All;

                }
                field("City"; Rec."City")
                {
                    ApplicationArea = All;

                }
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;

                }
                field("Country"; Rec."Country")
                {
                    ApplicationArea = All;

                }
                field("Email"; Rec."Email")
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
        MyTable: Record NewLineTable;
}