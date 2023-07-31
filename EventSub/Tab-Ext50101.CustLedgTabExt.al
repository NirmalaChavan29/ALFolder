tableextension 50115 CustLedgTabExt extends "Cust. Ledger Entry"
{
    fields
    {
        field(50100; Name; Text[26])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
        field(50103; Address2; Text[100])
        {
            Caption = 'Address2';
            DataClassification = ToBeClassified;
        }
    }
}
