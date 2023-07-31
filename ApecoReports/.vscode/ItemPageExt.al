pageextension 50118 ItemPageExt extends "Item Card"
{
    layout
    {
        addafter(Warehouse)
        {
            group(AdditionalFieds)
            {
                Caption = 'Additional Field';
                field("Description 3"; Rec."Description 3")
                {
                    ApplicationArea = All;
                }
                field("Stock Update"; Rec."Stock Update")
                {
                    ApplicationArea = All;
                }

            }
        }
    }

}