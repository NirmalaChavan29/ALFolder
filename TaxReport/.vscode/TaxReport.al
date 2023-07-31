report 50127 TaxReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    RDLCLayout = 'TaxRreport.rdl';

    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            column(CompName; Comp.Name) { }
            column(CompAdress; Comp.Address) { }
            column(CompCity; Comp.City) { }
            column(CompCountry; Comp.County) { }
            column(CompCode; Comp."Post Code") { }
            column(CompPicture; Comp.Picture) { }
            column(CompContact; Comp."Phone No.") { }
            column(Bill_to_Name; "Bill-to Name") { }
            column(Bill_to_Address; "Bill-to Address") { }
            column(Bill_to_City; "Bill-to City") { }
            column(Bill_to_County; "Bill-to County") { }
            column(Bill_to_Post_Code; "Bill-to Post Code") { }

            column(Bill_to_Contact_No_; "Bill-to Contact No.") { }
            column(Bill_to_Contact; "Bill-to Contact") { }
            column(Posting_Date; "Posting Date") { }
            column(Invoice_Disc__Code; "Invoice Disc. Code") { }
            column(Shipment_Method_Code; "Shipment Method Code") { }
            column(Payment_Terms_Code; "Payment Terms Code") { }
            column(Ship_to_Name; "Ship-to Name") { }
            column(Ship_to_Address; "Ship-to Address") { }

            column(Ship_to_City; "Ship-to City") { }
            column(Ship_to_County; "Ship-to County") { }
            column(Ship_to_Post_Code; "Ship-to Post Code") { }
            column(Ship_to_Contact; "Ship-to Contact") { }
            dataitem("Sales Invoice Line"; "Sales Invoice Line")
            {
                DataItemLinkReference = "Sales Invoice Header";
                DataItemLink = "Document No." = field("No.");
                DataItemTableView = sorting("Document No.", "Location Code", "Line No.");
                RequestFilterFields = "No.", Description;
                column(No_; "No.") { }
                column(Description; Description) { }
                column(Order_No_; "Order No.") { }
                column(Quantity; Quantity) { }
                column(Unit_Price; "Unit Price") { }
                column(amt; amt) { }
                column(Amount; Amount) { }
                column(bankName; bank.Name) { }
                column(bankBranch; Bank."Bank Branch No.") { }
                column(BankAccount; Bank."Bank Account No.") { }
                column(BankSwift; Bank."SWIFT Code") { }


                trigger OnAfterGetRecord()
                begin
                    amt := Quantity * "Unit Price";
                end;
            }

            trigger OnPreDataItem()
            begin
                Comp.get();
                Comp.CalcFields(Picture);
                bank.get(Bankname);
            end;

        }
    }
    requestpage
    {
        SaveValues = true;
        layout
        {
            area(Content)
            {
                group(options)
                {
                    field(BankName; BankName)
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
        Comp: Record "Company Information";
        amt: Decimal;
        Bank: Record "Bank Account";
        Bankname: Text[20];
}
