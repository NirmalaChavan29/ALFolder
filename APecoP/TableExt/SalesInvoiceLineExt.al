tableextension 60102 SalesInvoiceLine extends "Sales Invoice Line"
{
    fields
    {
        field(60100; Description3; Text[250])
        {
            Caption = 'Description 3';
            DataClassification = ToBeClassified;
        }
        field(60101; Description4; Text[250])
        {
            Caption = 'Description 4';
            DataClassification = ToBeClassified;
        }
        field(60102; ItemGroup; Code[50])
        {
            Caption = 'Item Group';
            DataClassification = ToBeClassified;
        }
        field(60103; Brand; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(60104; Barcode; Code[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Bar Code';
        }
        field(60105; Warranty; Option)
        {
            Caption = 'Warranty';
            OptionMembers = ,Yes,No;
            DataClassification = ToBeClassified;
        }
        field(60107; "SKU (Manufacturing Code)"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
    }


}