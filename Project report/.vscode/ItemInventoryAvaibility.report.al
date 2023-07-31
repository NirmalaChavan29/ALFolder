report 50101 ItemInventoryAvailability

{

    UsageCategory = ReportsAndAnalysis;

    ApplicationArea = All;

    Caption = 'Inventory and Availability, by Item Category';

    RDLCLayout = './src/ItemInventoryAvailability.rdl';



    dataset

    {

        dataitem(Item; Item)

        {


            CalcFields = Inventory, "Qty. on Purch. Order", "Qty. on Sales Order";

            column(ItemCategoryCode; "Item Category Code")

            {

                IncludeCaption = true;

            }

            column(ItemNo; "No.")

            {

                IncludeCaption = true;

            }

            column(Description; Description)

            {

                IncludeCaption = true;

            }

            column(Inventory; Inventory)

            {

                IncludeCaption = true;

            }

            column(Availability; Inventory - "Qty. on Sales Order" + "Qty. on Purch. Order")

            { }

            dataitem(ItemCategory; "Item Category")

            {

                DataItemLink = Code = field("Item Category Code");

                column(ItemCategoryDescription; Description)

                {

                    IncludeCaption = true;

                }

            }

        }

    }

    labels

    {

        ItemInventoryAvailabilityLbl = 'Inventory and Availability, by Item Category';

        AvailabilityLbl = 'Availability';

    }

}

