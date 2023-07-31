tableextension 50130 MyExtension extends "Sales Header"
{
    fields
    {
        // Add changes to table fields here
        field(50132; "Location1"; Text[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Location1';
        }
    }

    var
        myInt: Integer;
}