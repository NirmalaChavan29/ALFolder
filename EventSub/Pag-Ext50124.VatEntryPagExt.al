pageextension 50124 VatEntryPagExt extends "VAT Entries"
{
    layout
    {
        addafter("Entry No.")
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
