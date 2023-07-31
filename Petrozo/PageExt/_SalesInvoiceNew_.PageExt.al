pageextension 59001 "SalesInvoiceNew" extends "Sales Invoice"
{
    layout
    {
        modify("No.")
        {
            trigger OnAfterValidate()
            begin
                rec."Bank Account1" := 'BNK0001';
            end;
        }
    }
}
