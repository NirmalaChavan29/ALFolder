table 50106 "Egg Production Line"
{
    DataClassification = CustomerContent;
    Caption = 'Egg Production Line';
    DrillDownPageId = "50111";
    fields
    {
        field(1; "Document No"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Document No';
        }
        field(2; "Line no"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Line no';
        }
        field(3; "Chicken No"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Chicken no';
            TableRelation = chicken;
        }
        field(4; "Egg Production Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Egg production Date';
        }
        field(5; "Egg Type Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Egg Type Code';
            TableRelation = "Egg Type";
        }
        field(6; "Quntity"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Quantity';
            DecimalPlaces = 2 : 0;
        }
        field(7; "Chicken Description"; Text[100])
        {
            CalcFormula = lookup(Chicken.Description where("No" = field("Chicken No")));
            Editable = false;
            Fieldclass = Flowfield;
            Caption = 'Chicken Description';
        }
        field(8; "Egg Type Description"; Text[100])
        {
            CalcFormula = lookup("Egg Type".Description where(Code = field("Egg Type Code")));
            Editable = false;
            Fieldclass = Flowfield;
            Caption = 'Egg Type Description';
        }
        field(9; "No."; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Quantity';
            DecimalPlaces = 2 : 0;
        }

        field(10; "Document Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Document Date';

        }
        field(11; "No of approved "; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Document Date';

        }





    }

    keys
    {
        key(PK; "Egg Type Code")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

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