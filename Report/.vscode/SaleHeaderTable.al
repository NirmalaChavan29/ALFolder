tableextension 50121 MyExtension extends "Sales Header"
{
    fields
    {
        // Add changes to table fields here
        field(50121; "Code"; Text[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Code';
        }
    }

    var
        myInt: Integer;
}