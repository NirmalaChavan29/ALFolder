table 50135 SalesHeaderTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'No.';
            trigger OnValidate()
            var
                NosTab: Record NOSeries;
                NOSeriesMgmt: Codeunit NoSeriesManagement;
            begin
                if "No." = xRec."No." then
                    exit;
                NOSeriesMgmt.TestManual(NosTab.Series);
                "Series1" := '';
            end;
        }
        field(2; "Document Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Document Date';
        }
        field(3; "Series1"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Series1';
            TableRelation = "No. Series";

        }
        field(4; "Document No."; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Document No.';
        }
        field(5; "Department Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Document No.';
            TableRelation = DepartmentCodeTable;
        }
        field(6; "Description"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Description';
        }

    }

    keys
    {
        key(Pk; "No.", Series1)
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(Dropdown; Description, "Department Code") { }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    var
        NosTab: Record NOSeries;
        NOSeriesMgmt: Codeunit NoSeriesManagement;
    begin
        if Rec."No." = '' then begin
            nosTab.Get();
            NosTab.TestField(Series);
            NOSeriesMgmt.InitSeries(NosTab.Series, xRec.Series1, 0D, "No.", Series1);
        end;
    end;

    procedure AssistEdit(): Boolean
    var
        Sale: Record SalesHeaderTable;
        NosTab: Record NOSeries;
        NOSeriesMgmt: Codeunit NoSeriesManagement;
    begin
        Sale := Rec;
        NosTab.Get();
        NosTab.TestField(Series);
        if NOSeriesMgmt.SelectSeries(NosTab.Series, xRec.Series1, Sale.Series1) then begin
            NOSeriesMgmt.SetSeries(Sale."No.");
            Rec := Sale;
        end;
    end;


}