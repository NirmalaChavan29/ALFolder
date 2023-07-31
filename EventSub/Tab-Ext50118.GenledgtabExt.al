tableextension 50118 GenledgtabExt extends "G/L Entry"
{
    fields
    {
        field(50100; Name; Text[26])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
        field(50105; Address2; Text[100])
        {
            Caption = 'Address2';
            DataClassification = ToBeClassified;
        }
    }
}
