tableextension 50100 SalesLineExt extends "Sales Line"
{
    fields
    {
        // Add changes to table fields here
        field(26; Name; Text[25])
        {
            Caption = 'Name';
            Editable = false;
        }
    }

    var
        myInt: Integer;
}