table 50102 "Egg Type"
{
    Caption = 'Egg Type';
    DrillDownPageId = "50103";
    LookupPageId = "50103";
    DataClassification = CustomerContent;
    fields
    {
        field(1; "Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Egg Type Code';
        }
        field(2; Description; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Egg TypeDescription';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    procedure InsertEggType(EggTypeCode: Code[20]; EggTypeDescription: Text[50])
    var
        EggType: Record "Egg Type";
    begin
        Clear(EggType);
        EggType.Code := EggTypeCode;
        EggTypeDescription := EggTypeDescription;
        EggType.Insert();
    end;


    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}