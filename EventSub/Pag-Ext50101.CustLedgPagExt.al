pageextension 50113 CustLedgPagExt extends "Customer Ledger Entries"
{
    layout
    {
        addafter("Customer No.")
        {
            field(Name; Rec."Name")
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
