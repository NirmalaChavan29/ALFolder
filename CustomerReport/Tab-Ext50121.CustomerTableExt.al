tableextension 50121 CustomerTableExt extends Customer
{
    fields
    {
        field(50122; "Document Name"; Text[20])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }

    }
}
