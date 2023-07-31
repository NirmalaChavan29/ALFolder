tableextension 59005 "Warehouse Rcpt Line" extends "Warehouse Receipt Line"
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
