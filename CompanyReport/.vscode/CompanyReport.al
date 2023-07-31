report 50141 CompanyReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Company Report';
    RDLCLayout = 'Company Report.rdl';

    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            column(CompName; "Comp".Name) { }
            column(CompAddress; "Comp".Address) { }
            column(CompPhone; "Comp"."Phone No.") { }
            column(CompCity; "Comp".City) { }
            column(CompCountry; "Comp".County) { }
            column(No_; "No.") { }
            column(Order_Date; "Order Date") { }
            column(Purchaser_Code; "Purchaser Code") { }
            column(Posting_Description; "Posting Description") { }
            column(Buy_from_Vendor_No_; "Buy-from Vendor No.") { }
            column(Payment_Terms_Code; "Payment Terms Code") { }
            column(Addr; Addr) { }
            column(Nam; Nam) { }
            column(cit; cit) { }
            column(Country; Country) { }
            column(Phone; Phone) { }
            column(Pur; Pur)
            {
            }
            column(Pay; Pay)
            {

            }


            dataitem("Purchase Line"; "Purchase Line")
            {
                DataItemLinkReference = "Purchase Header";
                DataItemLink = "Document No." = field("No.");
                DataItemTableView = sorting("Document No.", "Line No.");

                column(No_1; "No.")
                {

                }
                column(Description; Description)
                {

                }
                column(Unit_of_Measure; "Unit of Measure") { }
                column(Quantity; Quantity) { }
                column(Unit_Cost; "Unit Cost") { }
                column(Line_Discount__; "Line Discount %") { }
                column(Allow_Invoice_Disc_; "Allow Invoice Disc.") { }
                column(VAT_Identifier; "VAT Identifier") { }
                column(Amount; Amount) { }
                column(VAT_Base_Amount; "VAT Base Amount") { }
                column(GetLineAmountExclVAT; GetLineAmountExclVAT) { }
                column(VAT__; "VAT %") { }
                column(Line_Amount; "Line Amount") { }
                column(Line_Discount_Amount; "Line Discount Amount") { }
                column(Inv__Discount_Amount; "Inv. Discount Amount") { }
                column(Amt; "Purchase Line".Quantity * "Unit Cost" - qwe) { }
                column(xyz; "Purchase Line"."Line Amount" * "VAT %" / 100) { }
                column(rty; "Purchase Line".Quantity * "Unit Cost" / 2)
                {

                }
                column(incl; "Purchase Line".Quantity * "Unit Cost" - qwe + tui) { }
                column(yuw; "Purchase Line"."VAT Base Amount" + Amt) { }
                column(qwe; qwe) { }
                column(tui; tui) { }

                trigger OnPreDataItem()
                var
                    myInt: Integer;
                begin
                    Comp.Get();
                end;

                trigger OnAfterGetRecord()
                var
                    Vend: Record Vendor;
                    Purchase: Record "Salesperson/Purchaser";
                    Payment: Record "Payment Terms";

                begin
                    Vend.SetRange("No.", "Purchase Header"."Pay-to Vendor No.");
                    if Vend.FindSet() then begin
                        Nam := Vend.Name;
                        Addr := Vend.Address;
                        Cit := Vend.City;
                        Country := Vend.County;
                        Phone := Vend."Mobile Phone No.";
                        Country := Vend.County;
                    end;
                    Purchase.SetRange("Code", "Purchase Header"."Purchaser Code");
                    if Purchase.FindSet() then begin
                        Pur := Purchase.Name;
                    end;
                    Payment.SetRange("Code", "Purchase Header"."Payment Terms Code");
                    if Payment.FindSet()
                    then begin
                        Pay := Payment.Description;
                    end;

                    begin
                        abc += "Line Amount";
                        qwe := (abc * "Line Discount %") / 100;
                        tui := ("Line Amount" * "VAT %") / 100;
                    end;
                end;



            }


        }

    }
    var
        myInt: Integer;
        Nam: Text[100];
        Addr: text[100];
        Comp: Record "Company Information";
        cit: text[100];
        Country: Text[100];
        Phone: Text[30];
        ItemNo: Text[20];
        Pur: Text[30];
        Des: Text[30];
        Pay: text[50];
        abc: Decimal;
        qwe: Decimal;
        tui: Decimal;
        Amt: Decimal;
        xyz: Decimal;
        rty: Decimal;
        incl: Decimal;
        yuw: Decimal;
}
