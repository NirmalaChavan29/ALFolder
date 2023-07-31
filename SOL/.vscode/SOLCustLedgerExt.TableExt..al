tableextension 50108 "SOL CustLedgerEntry" extends "Cust. Ledger Entry"
{
    fields
    {
        // Add changes to table fields here
        field(60200; "SOL Grade"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Grade';
            TableRelation = "SOL Grade";
            NotBlank = true;
            trigger OnValidate()
            begin
                CalcFields("SOL Grade Description");
            end;
        }
        field(60201; "SOL Grade Description"; Text[100])
        {
            Caption = 'Grade Description';
            FieldClass = FlowField;
            CalcFormula = lookup("SOL Grade".Description where("No." = field("SOL Grade")));
            Editable = false;

        }
    }
    
    var
        myInt: Integer;
}