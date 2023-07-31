table 50120 "SOL Grade History"
{
    DataClassification = CustomerContent;
    Caption = 'Grade Histrory';
    LookupPageId = "50122";
    DrillDownPageId = "50122";

    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Entry No.';

        }
        field(2; "Document Type"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Grade Document Type';
        }
        field(3; "Document No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Document No.';

        }
        field(4; "Document Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Document Date';
        }
        field(5; "Customer No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Customer No.';
            TableRelation = Customer;
        }
        field(6; "Customer Name"; Text[100])
        {
            Caption = 'Customer Name';
            FieldClass = FlowField;
            CalcFormula = lookup(Customer.Name where("No." = field("Customer No.")));
            Editable = false;
        }
        field(7; "DateTime"; DateTime)
        {
            DataClassification = CustomerContent;
            Caption = 'DateTime';

        }
        field(8; "User ID"; Code[50])
        {
            DataClassification = CustomerContent;
            Caption = 'User ID';

        }
        field(9; "Grade"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Grade';

        }
        field(10; "Grade Description"; Text[100])
        {
            Caption = 'Grade Description';
            FieldClass = FlowField;
            CalcFormula = lookup("SOL Grade".Description where("No." = field(Grade)));
            Editable = false;

        }

    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
    procedure InsertIntoGradeHistory(CustomerNo: Code[20]; Date: Date; DocType: Text[100]; DocNo: Code[20]; Grade: Code[20])
    begin
        if rec.FindLast() then
            rec."Entry No." := rec."Entry No." + 1
        else
            rec."Entry No." := 1;
        rec."Customer No." := CustomerNo;
        rec."Document Date" := Date;
        rec."Document Type" := DocType;
        rec."Document No." := DocNo;
        rec.Grade := Grade;
        rec.DateTime := CurrentDateTime;
        rec."User ID" := CopyStr(UserId(), 1, MaxStrLen(rec."User ID"));
        rec.Insert();
    end;

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