reportextension 50132 SaleReport extends "Standard Sales - Invoice"
{
    RDLCLayout = 'Sale Report.rdl';

    dataset
    {
        add(Header)
        {
            column(Location1; Location1)
            {

            }

        }
    }
    requestpage
    {
        layout
        {
            addfirst(Options)
            {
                field(Location1; Location1)
                {
                    ApplicationArea = All;
                    Caption = 'Adress';
                }


            }
        }




    }
    var
        Location1: Text[20];
}