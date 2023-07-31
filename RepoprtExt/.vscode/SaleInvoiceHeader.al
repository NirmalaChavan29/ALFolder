tableextension 50131 SalesInvHeader extends "Sales Invoice Header"
{
    fields
    {
        // Add changes to table fields here
        field(50132; "Location1"; Text[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Code';
        }
    }

    var
        myInt: Integer;
}