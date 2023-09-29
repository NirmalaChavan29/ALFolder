table 50105 "Egg Production"
{
    DataClassification = ToBeClassified;
    DataCaptionFields = "No.", "Document Date";
    Caption = 'Egg Production header';
    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';
        }
        field(2; "Document Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Document Date';
        }
        field(3; "Egg Order"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Document Date';
        }
    }

    keys
    {
        key(PK; "No.")
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