tableextension 50100 PurchaseHeaderExt extends "Purch. Inv. Header"
{
    fields
    {
        field(50100; "Email Sent"; boolean)
        {
            Caption = 'Email Sent';
            DataClassification = CustomerContent;
        }
        // Add changes to table fields here

    }

    var
        myInt: Integer;
}