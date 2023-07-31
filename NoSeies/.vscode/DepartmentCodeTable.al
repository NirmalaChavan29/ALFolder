table 50134 DepartmentCodeTable
{
    DataClassification = ToBeClassified;
    DrillDownPageId = 50134;
    LookupPageId = 50134;
    fields
    {
        field(1; "Code"; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Description"; Code[20])
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(Pk; "Code")
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