tableextension 50123 VatEntryTabExt extends "VAT Entry"
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
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
        field(50102; Address2; Text[100])
        {
            Caption = 'Address2';
            DataClassification = ToBeClassified;
        }
    }
}
