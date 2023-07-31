page 50100 CustomerOverviewList
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Lists;
    Editable = false;
    SourceTable = CustomerOverview;
    ;
    Caption = 'Cource Overview List';
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Entry No"; Rec."Entry No")
                {
                    ApplicationArea = All;

                }
                field("Customer No"; Rec."Customer No")
                {
                    ApplicationArea = All;

                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;

                }
                field("Source Code"; Rec."Source Code")
                {
                    ApplicationArea = All;

                }
                field("Amount"; Rec.Amount)
                {
                    ApplicationArea = All;

                }
                field("LastRunDate"; Rec.LastRunDate)
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
            action(ImportRecord)
            {
                ApplicationArea = All;
                Caption = 'Import Records';
                Image = Import;
                
                trigger OnAction()
                UpdateCustomerOverview: Codeunit CustomerOverviewMgmt;
                begin
                end;
            }
        }
    }

    var
        myInt: Integer;
        
}