tableextension 50122 SalesInvHeader extends "Sales Invoice Header"
{
    fields
    {
        // Add changes to table fields here
        field(1; "Code"; Text[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Code';
        }
    }

    var
        myInt: Integer;
}