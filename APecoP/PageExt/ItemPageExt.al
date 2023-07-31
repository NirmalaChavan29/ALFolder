pageextension 60100 ItemPageExt extends "Item Card"
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
                field("Description 4"; Rec."Description 4")
                {
                    ApplicationArea = All;
                }
                field(ItemGroup; Rec.ItemGroup)
                {
                    Importance = Promoted;
                    ApplicationArea = All;
                }
                field(BarCode; Rec.BarCode)
                {
                    ApplicationArea = All;
                }
                field(WarrantyItem; Rec.WarrantyItem)
                {
                    ApplicationArea = All;

                }
                field(SerialNumberReq; Rec.SerialNumberReq)
                {
                    ApplicationArea = All;
                }
                field(Brand; Rec.Brand)
                {
                    Importance = Promoted;
                    ApplicationArea = All;
                }
                field("SKU (Manufacturing Code)"; Rec."SKU (Manufacturing Code)")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}