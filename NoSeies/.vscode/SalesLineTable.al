table 50131 SalesLineTable

{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Line No"; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Document No"; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(3; "Item No"; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(4; "Description"; Text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(5; "Quantity"; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(6; "City"; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(7; "Unit of Measure Code"; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(8; "Line Discount"; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(9; "Quantity  to ship"; Text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(20; "Shipment Date"; Date)
        {
            DataClassification = ToBeClassified;

        }

    }

    keys
    {
        key(Pk; "Line No", "Document No")
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