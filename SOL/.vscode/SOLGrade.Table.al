table 50100 "SOL Grade"
{
    DataClassification = CustomerContent;
    Caption = 'Grade';
    LookupPageId = "50126";
    DrillDownPageId = "50126";


    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';

            trigger OnValidate()
            var
                GradeSetup: Record "SOL Grade Setup";
                NoSeriesManagement: Codeunit NoSeriesManagement;
            begin
                if "No." = xRec."No." then
                    exit;

                GradeSetup.Get();
                NoSeriesManagement.TestManual((GradeSetup."Grade Nos."));
                "No. Series" := '';
            end;
        }
        field(2; "Description"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';
        }
        field(3; "No. Series"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No. Series';
            TableRelation = "No. Series";
            Editable = false;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "No.", Description) { }
        fieldgroup(Brick; "No.", Description) { }
    }
    var
        myInt: Integer;

    trigger OnInsert()
    var 
        GradeSetup: Record "SOL Grade Setup";
        NoSeriesManagement: Codeunit NoSeriesManagement;
    begin
        if rec."No." = '' then begin
            GradeSetup.Get();
            GradeSetup.TestField("Grade Nos.");
            NoSeriesManagement.InitSeries(GradeSetup."Grade Nos.",xRec."No. Series",0D,"No.","No. Series");
        end;
    end;

    procedure AssistEdit(): Boolean
    var 
        Grade: Record "SOL Grade";
        GradeSetup: Record "SOL Grade Setup";
        NoSeriesManagement: Codeunit NoSeriesManagement;
    begin
        Grade := Rec;
        GradeSetup.Get();
        GradeSetup.TestField("Grade Nos.");
        if NoSeriesManagement.SelectSeries(GradeSetup."Grade Nos.",xRec."No. Series",Grade."No. Series") then begin
            NoSeriesManagement.SetSeries(Grade."No.");
        end;
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