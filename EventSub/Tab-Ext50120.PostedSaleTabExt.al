tableextension 50120 PostedSaleTabExt extends "Sales Invoice Header"
{
    fields
    {
        field(50100; Name; Text[26])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
        field(50101; Description; Text[26])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(50102; Address2; Text[100])
        {
            Caption = 'Address2';
            DataClassification = ToBeClassified;
        }
    }
}
