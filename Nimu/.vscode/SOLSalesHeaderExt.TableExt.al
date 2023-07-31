tableextension 50126 "SOL Sales Header Ext" extends "Sales Header"
{
    fields
    {
        field(50110; "SOL Won/Lost Quote Status"; Enum "SOL Won/Lost Status")
        {
            DataClassification = CustomerContent;
            Caption = 'Quote Status';
            trigger OnValidate()
            begin
                if "SOL Won/Lost Date" = 0DT then
                    "SOL Won/Lost Date" := CurrentDateTime();
            end;
        }
        field(50111; "SOL Won/Lost Date"; DateTime)
        {
            DataClassification = CustomerContent;
            Caption = 'Won/Lost Date';
            Editable = false;
        }
        field(50112; "SOL Won/Lost Reason Code"; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Won/Lost Reason Code';
            TableRelation = if ("SOL Won/Lost Quote Status" = const(Won)) "Close Opportunity Code" where(type = const(Won))
            else
            if ("SOL Won/Lost Quote Status" = const(Lost)) "Close Opportunity Code" where(type = const(Lost));

            trigger OnValidate()
            begin
                CalcFields("SOL Won/Lost Reason Desc.");
            end;
        }
        field(50113; "SOL Won/Lost Reason Desc."; Text[100])
        {
            Caption = 'Won/Lost Reason Description';
            FieldClass = FlowField;
            CalcFormula = lookup("Close Opportunity Code".Description where(Code = field("SOL Won/Lost Reason Code")));
            Editable = false;
        }
        field(50114; "SOL Won/Lost Remarks"; Text[2048])
        {
            DataClassification = CustomerContent;
            Caption = 'Won/Lost Remarks';
        }


    }

    var
        myInt: Integer;
}