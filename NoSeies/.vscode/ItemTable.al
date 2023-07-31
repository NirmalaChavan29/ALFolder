table 50121 ItemTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Item No"; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Description"; Text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(3; "Quantity"; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(4; "City"; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(5; "Unit of Measure Code"; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(6; "Line Discount"; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(7; "Quantity  to ship"; Text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(8; "Shipment Date"; Date)
        {
            DataClassification = ToBeClassified;

        }
        field(9; "Line No"; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(10; "Document No"; Integer)
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(pk; "Item No")
        {
            Clustered = true;
        }
        key(pk1; "Line No")
        {

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