tableextension 50116 GenJnlTabExt extends "Gen. Journal Line"
{
    fields
    {
        field(50100; Name; Text[26])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
        field(50104; Address2; Text[100])
        {
            Caption = 'Adress2';
            DataClassification = ToBeClassified;
        }
    }
}
