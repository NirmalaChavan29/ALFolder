report 50140 "Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Report';
    RDLCLayout = 'My Report.rdl';

    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            DataItemLinkReference = "Sales Invoice Header";
            DataItemLink = "Bill-to City" = field("Bill-to City");
            RequestFilterFields = "Bill-to City", "Sell-to City";
            column(Company_Bank_Account_Code; "Company Bank Account Code") { }

            column(Sell_to_Customer_Name; "Sell-to Customer Name")
            {
                IncludeCaption = true;

            }
            column(Bill_to_Address; "Bill-to Address")
            {
                IncludeCaption = true;
            }

            column(Posting_Date; "Posting Date")
            { }
            column(Invoice_Disc__Code; "Invoice Disc. Code")
            {

            }
            column(Payment_Terms_Code; "Payment Terms Code") { }
            column(Salesperson_Code; "Salesperson Code") { }
            column(Currency_Code; "Currency Code") { }
            column(No_; "No.") { }
            column(Bill_to_City; "Bill-to City") { }
            dataitem("Company Information"; "Company Information")

            {


                column(Name; Name) { }
                column(Address; Address) { }
                column(Phone_No_; "Phone No.") { }
                column(City; City) { }
                column(Country_Region_Code; "Country/Region Code") { }
                column(E_Mail; "E-Mail") { }
                column(Home_Page; "Home Page") { }
                column(Picture; Picture) { }
                column(IBAN; IBAN) { }
                column(SWIFT_Code; "SWIFT Code") { }
                column(Contact_Person; "Contact Person") { }
                column(Address_2; Address) { }
                column(City_2; "city") { }
                column(County; County) { }
                column(Name_2; Name) { }
                column(Country_Region_Code_2; "Country/Region Code") { }
                column(Phone_No_2; "Phone No.") { }
                column(Address_3; "Address") { }



                dataitem("Sales Invoice Line"; "Sales Invoice Line")
                {
                    DataItemLinkReference = "Sales Invoice Header";
                    DataItemLink = "Document No." = field("No.");
                    DataItemTableView = sorting("Document No.", "Location Code", "Line No.");
                    RequestFilterFields = "No.", Description;





                    column(Item_Category_Code; "Item Category Code")
                    {

                    }
                    column(Item_Reference_No_; "Item Reference No.") { }
                    column(Description; Description) { }
                    column(Unit_of_Measure_Code; "Unit of Measure Code") { }
                    column(Quantity; Quantity) { }
                    column(Unit_Price; "Unit Price") { }
                    column(Line_Amount; "Line Amount") { }
                    column(Line_Discount__; "Line Discount %") { }
                    column(City_3; "City") { }
                    column(Sr_No; Sr_No) { }
                    column(Document_No_; "Document No.") { }


                    trigger OnAfterGetRecord()
                    begin
                        Sr_No += 1;

                    end;



                }
                trigger OnPreDataItem()
                begin
                    Sr_No := 0;
                end;
            }
        }
    }
    var
        City: Text[25];
        Sr_No: Integer;
}