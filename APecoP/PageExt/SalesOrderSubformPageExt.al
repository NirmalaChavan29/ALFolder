pageextension 60103 SalesOrderSubform extends "Sales Order Subform"
{
    layout
    {
        addafter(Description)
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