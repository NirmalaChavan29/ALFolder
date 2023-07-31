report 50101 TaxReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Tax Invoice Report';
    RDLCLayout = 'Tax Report.rdl';

    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            column(No_1; "No.") { }

            column(Posting_Date; "Posting Date") { }

            column(Payment_Terms_Code; "Payment Terms Code") { }

            column(Salesperson_Code; "Salesperson Code") { }
            column(Bill_to_Name; "Bill-to Name") { }
            column(Bill_to_Address; "Bill-to Address") { }
            column(Bill_to_Contact_No_; "Bill-to Contact No.") { }
            column(Bill_to_City; "Bill-to City") { }
            column(Ship_to_Name; "Ship-to Name") { }
            column(Ship_to_Address; "Ship-to Address") { }
            column(Ship_to_Contact; "Ship-to Contact") { }
            column(Ship_to_City; "Ship-to City") { }
            column(Company_Bank_Account_Code; "Company Bank Account Code") { }
            column(met; met) { }
            column(CompName; "Com".Name) { }
            column(CompPicture; "Com".Picture) { }
            column(CompAddress; "Com".Address) { }
            column(CompPhone; "Com"."Phone No.") { }
            column(CompCity; "Com".City) { }
            column(CompCountry; "Com".County) { }
            column(CompEmail; "com"."E-Mail") { }
            column(CompPostcode; "com"."Post Code") { }
            column(E_Way_Bill_No_; "E-Way Bill No.") { }
            column(Vehicle_No_; "Vehicle No.") { }






            dataitem("Sales Invoice Line"; "Sales Invoice Line")
            {
                DataItemLinkReference = "Sales Invoice Header";
                DataItemLink = "Document No." = field("No.");
                DataItemTableView = sorting("Document No.", "Location Code", "Line No.");
                RequestFilterFields = "No.", Description;


                column(No_; "No.") { }
                column(Description; Description) { }
                column(Quantity; Quantity) { }
                column(Line_Amount; "Line Amount") { }
                column(Line_Discount__; "Line Discount %") { }
                column(Unit_Price; "Unit Price") { }
                column(HSN_SAC_Code; "HSN/SAC Code") { }
                column(VAT__; "VAT %") { }
                column(Sr_No; Sr_No) { }
                column(amt; amt) { }
                column(Dis; Dis) { }
                column(tax; tax) { }
                column(AmountInWords; AmountInWords) { }
                trigger OnAfterGetRecord()
                var

                begin
                    Sr_No += 1;

                    trans.SetRange(Code, "Sales Invoice Header"."Transport Method");
                    if trans.FindSet() then
                        met := trans.Description;
                    amt := Quantity * "Unit Price";
                    tax := Amount - "Unit Price";
                    Dis := amt - tax;
                    Amountt += (Quantity * "Unit Price");
                    RepCheck.InitTextvariable();
                    RepCheck.FormatNoText(NoText, "Amountt", '');
                    AmountInwords := NoText[1];


                end;









            }
            trigger OnPreDataItem()
            var
                myInt: Integer;
            begin
                Com.Get();
                com.CalcFields(Picture);
                Sr_No := 0;
            end;


        }

    }







    var
        myInt: Integer;
        Com: Record "Company Information";
        met: Text[100];
        Sales: Record "Sales Invoice Header";
        Sale: Record "Sales Header";
        trans: Record "Transport Method";
        Sr_No: Integer;
        amt: Integer;
        tax: Integer;
        Dis: Integer;
        Amountt: Decimal;
        AmountInWords: Text[250];
        RepCheck: Report "Check";
        NoText: array[2] of text;




}