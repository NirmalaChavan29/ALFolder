page 50110 StrPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;


    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(MyTxt; MyTxt)
                {
                    ApplicationArea = All;

                }
                field(ResultTxt; ResultTxt)
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
            action(Press)
            {
                ApplicationArea = All;
                Caption = 'Press';
                Image = Action;
                trigger OnAction()
                var
                    Strc: Codeunit StrCodeunit;
                begin
                    Strc.Run();
                end;
            }
        }
    }

    var
        myInt: Integer;
        MyTxt: Text[20];
        ResultTxt: Text[20];
}