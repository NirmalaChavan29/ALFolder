pageextension 50115 ItemPagExt extends "Item Card"
{
    layout
    {
        addafter(Description)
        {

            field(City; Rec.City)
            {
                ApplicationArea = All;

            }
        }
    }
}
