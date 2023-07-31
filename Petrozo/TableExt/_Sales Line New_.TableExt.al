tableextension 59000 "Sales Line New" extends "Sales Line"
{
    fields
    {
        field(59000; "HS Code"; Code[50])
        {
            Caption = 'HS Code';
            DataClassification = ToBeClassified;
        }
    }
}
