pageextension 50119 GenJnlPagExt extends "General Ledger Entries"
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
