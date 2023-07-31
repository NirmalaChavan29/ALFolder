tableextension 59006 "Posted Whs Rcpt Line" extends "Posted Whse. Receipt Line"
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
