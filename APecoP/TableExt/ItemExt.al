tableextension 60100 ItemTableExt extends item
{
    fields
    {
        field(60100; "Description 3"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(60101; "Description 4"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(60102; ItemGroup; Code[50])
        {
            Caption = 'Item Group';
            DataClassification = ToBeClassified;
        }
        field(60103; BarCode; Code[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Bar Code';
        }
        field(60104; WarrantyItem; Option)
        {
            Caption = 'Warranty Item';
            OptionMembers = ,Yes,No;
            DataClassification = ToBeClassified;
        }
        field(60105; SerialNumberReq; Option)
        {
            Caption = 'Serial num required';
            OptionMembers = ,Yes,No;
            DataClassification = ToBeClassified;
        }
        field(60106; Brand; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(60107; "SKU (Manufacturing Code)"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
    }

    var
        myInt: Integer;
}