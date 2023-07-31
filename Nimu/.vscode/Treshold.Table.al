table 50131 "Treshold Setup"
{
    DataClassification = CustomerContent;
    Caption = 'Treshold Setup';
    fields
    {
        field(1; "Primary key"; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Primary key';
        }
        field(2; "Treshold 1 Value"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Treshold 1 Value';
        }
        field(3; "Treshold 2 Value"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Treshold 2 Value';
        }
        field(4; "Treshold 1 Style"; Enum "StyleType")
        {
            DataClassification = CustomerContent;
            Caption = 'Treshold 1 Style';
        }
        field(5; "Treshold 2 Style"; Enum "StyleType")
        {
            DataClassification = CustomerContent;
            Caption = 'Treshold 2 Style';
        }
    }

    keys
    {
        key(PK; "Primary key")
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