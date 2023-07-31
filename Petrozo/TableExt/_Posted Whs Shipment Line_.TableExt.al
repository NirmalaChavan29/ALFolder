tableextension 59002 "Posted Whs Shipment Line" extends "Posted Whse. Shipment Line"
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
