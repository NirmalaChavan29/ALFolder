pageextension 60104 PostedSalesInvoiceSubform extends "Posted Sales Invoice Subform"
{
    layout
    {
        addafter("Description 2")
        {
            field(Description3; Rec.Description3)
            {
                ApplicationArea = All;
            }
            field(Description4; Rec.Description4)
            {
                ApplicationArea = All;
            }
            field(ItemGroup; Rec.ItemGroup)
            {
                ApplicationArea = All;
            }
            field(Brand; Rec.Brand)
            {
                ApplicationArea = All;
            }
        }
    }


}