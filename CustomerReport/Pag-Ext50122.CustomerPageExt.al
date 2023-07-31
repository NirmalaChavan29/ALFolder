pageextension 50122 CustomerPageExt extends "Customer Card"
{
    layout
    {
        addafter("No.")
        {
            field("Document Name"; Rec."Document Name")
            {
                ApplicationArea = All;

            }
        }
    }

}
