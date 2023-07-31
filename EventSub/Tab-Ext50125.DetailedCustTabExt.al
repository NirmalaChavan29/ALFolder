tableextension 50125 DetailedCustTabExt extends "Detailed Cust. Ledg. Entry"
{
    fields
    {
        field(50100; Name; Text[26])
        {
            Caption = 'Name';
            FieldClass = FlowField;
            CalcFormula = lookup("Cust. Ledger Entry".Name where("Document No." = field("Document No.")));
        }
        field(50101; Description; Text[100])
        {
            Caption = 'Description';
            FieldClass = FlowField;
            CalcFormula = lookup("Cust. Ledger Entry".Description where("Document No." = field("Document No.")));
        }
        field(50102; Address2; Text[100])
        {
            Caption = 'Address2';
            FieldClass = FlowField;
            CalcFormula = lookup("Cust. Ledger Entry".Address2 where("Document No." = field("Document No.")));
        }
    }
}
