tableextension 50138 SalesInvLineTabExt extends "Sales Invoice Line"
{
    fields
    {
        field(50100; Name; Text[20])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
        field(50101; Address2; Text[100])
        {
            Caption = 'Address2';
            DataClassification = ToBeClassified;
        }
    }
}
