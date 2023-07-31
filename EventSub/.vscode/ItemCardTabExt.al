tableextension 50101 ItemCardExt extends Item
{
    fields
    {
        // Add changes to table fields here
        field(50101; Name; Text[25])
        {
            Caption = 'Name';
        }
    }

    var
        myInt: Integer;
}