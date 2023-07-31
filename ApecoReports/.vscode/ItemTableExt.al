tableextension 50117 ItemTableExt extends item
{
    fields
    {
        field(50111; "Description 3"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(50112; "Stock Update"; Text[250])
        {
            DataClassification = ToBeClassified;
        }

    }

    var
        myInt: Integer;
}