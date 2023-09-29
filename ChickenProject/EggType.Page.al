page 50103 "Egg Types"
{
    PageType = List;
    ApplicationArea = All;
    Caption = 'Egg Types';
    UsageCategory = Lists;
    SourceTable = "Egg Type";

    layout
    {
        area(Content)
        {
            repeater(general)
            {
                field(Code; Rec.code)
                {
                    ApplicationArea = All;
                    ToolTip = 'Enter the Egg Type code';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Enter the Egg Type description';
                }
            }
        }
    }

    actions
    {
        area(Creation)
        {
            action(InsertDefaultEggTypes)
            {
                ApplicationArea = All;
                ToolTip = 'Insert Default egg types';
                Image = Default;

                trigger OnAction()
                var
                    EggType: Record "Egg Type";
                    EggTypeNotEmptyErr: Label 'There are already Egg Types in the table.';
                begin
                    if EggType.IsEmpty then begin
                        rec.InsertEggType('EggType01', 'EggType01');
                        rec.InsertEggType('EggType02', 'EggType02');
                        rec.InsertEggType('EggType03', 'EggType03');
                    end
                    else
                        Error(EggTypeNotEmptyErr);
                end;
            }
        }
    }
}