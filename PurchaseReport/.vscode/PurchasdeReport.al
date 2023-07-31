report 50100 PurchaseReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    RDLCLayout = 'PurchaseReport.rdl';
    Caption = 'Purchase Report';

    dataset
    {
        dataitem("Purch. Inv. Header"; "Purch. Inv. Header"
        )
        {
            column(Pay_to_Vendor_No_; "Pay-to Vendor No.") { }
            column(Vendor_Invoice_No_; "Vendor Invoice No.") { }
            column(Document_Date; "Document Date") { }
            column(Posting_Date; "Posting Date") { }
            column(Due_Date; "Due Date") { }
            column(VAT_Registration_No_; "VAT Registration No.") { }
            column(Your_Reference; "Your Reference") { }
            column(Payment_Terms_Code; "Payment Terms Code") { }
            column(Shipment_Method_Code; "Shipment Method Code") { }
            column(Buy_from_Vendor_Name; "Buy-from Vendor Name") { }
            column(Buy_from_Address; "Buy-from Address") { }
            column(Buy_from_City; "Buy-from City") { }
            column(Buy_from_County; "Buy-from County") { }
            column(Buy_from_Post_Code; "Buy-from Post Code") { }
            column(CompVAT; Comp."VAT Registration No.") { }
            column(CompGiro; Comp."Giro No.") { }
            column(CompBank; Comp."Bank Name") { }
            column(CompBankAcnt; Comp."Bank Account No.") { }
            column(CompPhone; Comp."Phone No.") { }
            column(CompEmail; Comp."E-Mail") { }

            column(CompName; "Comp".Name) { }
            column(CompAddress; Comp.Address) { }
            column(CompCity; Comp.City) { }
            column(CompCode; Comp."Post Code") { }
            column(CompCountry; Comp.County) { }
            column(Ship_to_Address; "Ship-to Address") { }
            column(Ship_to_City; "Ship-to City") { }
            column(Ship_to_Code; "Ship-to Code") { }
            column(Ship_to_Name; "Ship-to Name") { }
            column(Ship_to_County; "Ship-to County") { }
            column(Ship_to_Post_Code; "Ship-to Post Code") { }


            dataitem("Purch. Inv. Line"; "Purch. Inv. Line")
            {
                DataItemLinkReference = "Purch. Inv. Header";
                DataItemLink = "Document No." = field("No.");
                DataItemTableView = sorting("Document No.", "Line No.");

                column(No_; "No.") { }
                column(Description; Description) { }
                column(Quantity; Quantity) { }
                column(Unit_of_Measure; "Unit of Measure") { }
                column(Unit_Cost; "Unit Cost") { }
                column(Line_Discount__; "Line Discount %") { }
                column(Allow_Invoice_Disc_; "Allow Invoice Disc.") { }
                column(VAT_Identifier; "VAT Identifier") { }
                column(Amount; Amount) { }
                column(VAT__; "VAT %") { }
                column(Line_Amount; "Line Amount") { }
                column(Inv__Discount_Amount; "Inv. Discount Amount") { }
                column(VAT_Base_Amount; "VAT Base Amount") { }
                column(Actamt; Actamt) { }
                column(Disamt; Disamt) { }
                column(amt; amt) { }
                column(vat; vat) { }
                trigger OnAfterGetRecord()
                begin
                    Actamt := Quantity * "Unit Cost (LCY)";
                    Disamt := Actamt * "Line Discount %" / 100;
                    amt := Actamt - Disamt;
                    vat := Actamt * "VAT %" / 100;

                end;
            }
            trigger OnPreDataItem()
            begin
                Comp.get();
                Comp.CalcFields(Picture);
            end;
        }
    }







    var
        myInt: Integer;
        Comp: Record "Company Information";
        Actamt: Decimal;
        Disamt: Decimal;
        amt: Decimal;
        vat: Decimal;
}