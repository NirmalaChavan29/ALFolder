table 50100 Chicken
{
    DataClassification = CustomerContent;
    Caption = 'Chicken';
    fields
    {
        field(1; "No"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No';
        }
        field(2; Description; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';
        }
        field(3; "Chicken Type code"; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "Chicken Types";
            Caption = 'Chicken type code';

            trigger OnValidate()
            begin
                CalcFields("Chicken Type Description");
            end;
        }
        field(4; "Last Date Modified"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(5; Picture; MediaSet)
        {
            DataClassification = CustomerContent;
            Caption = 'Picture';
        }
        field(6; "Chicken Type Description"; Text[100])
        {
            Caption = 'Chicken Type Description';
            Fieldclass = Flowfield;
            CalcFormula = lookup("chicken Types".Description where("code" = field("Chicken Type code")));
            Editable = false;
        }
        field(7; "Number of eggs Produced"; Decimal)
        {
            Caption = 'Number of eggs Produced';
            FieldClass = FlowField;
            CalcFormula = sum("Egg Production Line"."Quntity" where("Chicken No" = field(No)));
            Editable = false;
        }
        field(8; "Date Filter"; Date)
        {
            FieldClass = FlowFilter;
            Caption = 'Date Filter';
        }
        field(9; "Egg TypeFilter"; Code[20])
        {
            FieldClass = FlowFilter;
            Caption = 'Egg Type Filter';
            TableRelation = "Egg Type";
        }
        field(10; "No of eggs Produced"; Decimal)
        {
            FieldClass = FlowField;
            Caption = 'No of eggs produced';
            Editable = false;
            CalcFormula = sum("Egg Production Line".Quntity where("Chicken No" = field(No), "Egg Production Date" = field("Date Filter"), "Egg Type Code" = field("Egg TypeFilter")));
        }
        field(11; "Egg Type Code"; Text[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Egg Type Code';
        }

    }

    keys
    {
        key(PK; "No")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(Dropdown; Description, "Chicken Type Code") { }
        fieldgroup(Brick; Description, Picture) { }
    }

    trigger OnDelete()
    var
        EggProductionLine: Record "Egg Production Line";
        ChickenHasEggsErr: Label 'The Chicken %1 %2 has eggs, you cant delete it.', Comment = '%1 = Chicken No.;%2 = Chicken Description';
    begin
        Clear(EggProductionLine);
        EggProductionLine.SetRange("Chicken No", Rec.No);
        if not EggProductionLine.IsEmpty then
            Error(ChickenHasEggsErr, Rec."No", Rec.Description);
    end;

    trigger OnModify()
    begin

    end;



    trigger OnRename()
    begin

    end;

}