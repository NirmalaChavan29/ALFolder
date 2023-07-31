table 50107 NOSeries
{
    DataClassification = CustomerContent;
    Caption = 'No Series';
    fields
    {
        field(1; "No"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No';
        }
        field(2; Series; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
            Caption = 'Series';
        }
    }

    keys
    {
        key(Pk1; No)
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