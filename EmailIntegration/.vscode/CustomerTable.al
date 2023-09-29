tableextension 50101 CustomerTableExt extends Customer
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