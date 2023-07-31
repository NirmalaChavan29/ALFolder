tableextension 50113 SaleOrderExtTab extends "Sales Line"
{
    fields
    {
        field(50100; City; Text[25])
        {
            Caption = 'City';
            DataClassification = ToBeClassified;
        }
    }
}
