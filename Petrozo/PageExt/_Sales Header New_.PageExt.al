pageextension 59002 "Sales Header New" extends "Sales Order"
{
    layout
    {
        modify("Sell-to Customer No.")
        {
            trigger OnAfterValidate()
            begin
                rec."Bank Account1" := 'BNK0001';
                rec.Modify();
            end;
        }
        addafter("Work Description")
        {
            field("Posting No. Series"; Rec."Posting No. Series")
            {
                ApplicationArea = all;
            }
        }
    }
}
