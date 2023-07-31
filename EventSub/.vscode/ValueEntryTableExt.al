tableextension 50102 ValueEntryExt extends "Value Entry"
{
    fields
    {
        // Add changes to table fields here
        field(50100; Name; Text[26])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
        field(50101; Address2; Text[100])
        {
            Caption = 'Address2';
            DataClassification = ToBeClassified;
        }
    }

    var
        myInt: Integer;
}