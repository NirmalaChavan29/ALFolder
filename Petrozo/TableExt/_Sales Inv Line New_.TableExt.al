tableextension 59003 "Sales Inv Line New" extends "Sales Invoice Line"
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
