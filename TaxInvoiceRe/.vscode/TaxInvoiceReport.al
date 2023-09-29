report 50121 TaxInvoiceReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Tax Report';
    RDLCLayout = 'Tax Report.rdl';

    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            column(Sell_to_Customer_Name; "Sell-to Customer Name") { }
            column(Sell_to_Address; "Sell-to Address") { }
            column(Sell_to_City; "Sell-to City") { }
            column(Sell_to_County; "Sell-to County") { }
            column(Posting_Date; "Posting Date") { }
            column(No_; "No.") { }
            column(Due_Date; "Due Date") { }
            column(Payment_Terms_Code; "Payment Terms Code") { }
            column(compBank; comp."Bank Name") { }
            column(compAccountNo; comp."Bank Account No.") { }
            column(compSwiftCode; comp."SWIFT Code") { }
            column(compIBAN; comp.IBAN) { }
            column(CompName; "comp".name) { }
            column(compAddress; "comp".Address) { }
            column(compCity; comp.City) { }
            column(CompVat; comp."VAT Registration No.") { }
            column(compcountry; comp.County) { }
            column(compPicture; comp.Picture) { }

            column(compPhone; comp."Phone No.") { }
            column(Name; Bank.Name) { }
            column(BankAccountNo; Bank."Bank Account No.") { }
            column(BankSwift; Bank."SWIFT Code") { }
            column(BankIBAN; Bank.IBAN) { }
            column(BankCcurrency; Bank."Currency Code") { }



            dataitem("Sales Invoice Line"; "Sales Invoice Line")
            {
                DataItemLinkReference = "Sales Invoice Header";
                DataItemLink = "Document No." = field("No.");
                DataItemTableView = sorting("Document No.", "Location Code", "Line No.");
                RequestFilterFields = "No.", Description;
                column(Description; Description) { }
                column(No_1; "No.") { }
                column(Unit_of_Measure; "Unit of Measure") { }
                column(Quantity; Quantity) { }
                column(Unit_Price; "Unit Price") { }
                column(VAT__; "VAT %") { }
                column(Amount; Amount) { }
                column(Actamt; Actamt) { }
                column(vat; vat) { }
                trigger OnAfterGetRecord()
                begin
                    Actamt := Quantity * "Unit Price";
                    Disamt := Actamt * "Line Discount %" / 100;
                    amt := Actamt - Disamt;
                    vat := Actamt * "VAT %" / 100;




                end;

            }
            trigger OnPreDataItem()
            begin
                comp.get();
                comp.CalcFields(Picture);
                Bank.GET(BankName);



            end;
        }


    }
    requestpage
    {
        SaveValues = true;
        AboutTitle = 'New Teching Tips about report';
        AboutText = 'Tis is some **text** and *italic*';
        layout
        {
            area(content)
            {
                group(options)
                {
                    field(bankName; BankName)
                    {
                        TableRelation = "Bank Account";
                        Caption = 'Bank Name';
                    }

                }
            }
        }
    }







    var
        myInt: Integer;
        comp: Record "Company Information";
        Actamt: Decimal;
        disamt: Decimal;
        amt: Decimal;
        vat: Decimal;
        BankName: Text[20];
        Name: Text[20];
        BankSwift: Code[23];
        BankIBAN: Code[40];

        Bank: Record "Bank Account";
        BankCcurrency: Code[20];
        usd: Decimal;



}