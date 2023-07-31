pageextension 50126 DetailedCustPagExt extends "Detailed Cust. Ledg. Entries"
{
    layout
    {
        addafter("Document No.")
        {
            field(Name; Rec.Name)
            {
                ApplicationArea = All;
                Caption = 'Name';
            }
            field(Address2; Rec.Address2)
            {
                ApplicationArea = All;
                Caption = 'Address2';
            }
        }
    }
}
