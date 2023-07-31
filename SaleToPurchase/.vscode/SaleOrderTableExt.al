tableextension 50100 SaleOrderExt extends "Sales Header"
{
    fields
    {
        // Add changes to table fields here
        field(50100; "VendorNo."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'VendorNo';
        }
    }
    
    var
        myInt: Integer;
}