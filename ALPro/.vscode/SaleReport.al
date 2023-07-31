report 50103 SalesReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Sale Report';
    RDLCLayout = 'MyReport.rdl';


    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            column(Company_Bank_Account_Code; "Company Bank Account Code")
            { }
            column(Sell_to_Customer_No_; "Sell-to Customer No.")
            {
                IncludeCaption = true;
            }
            column(Sell_to_Customer_Name; "Sell-to Customer Name")
            {
                IncludeCaption = true;
            }
            column(Bill_to_Address; "Bill-to Address")
            {
                IncludeCaption = true;
            }
            column(Posting_Date; "Posting Date") { }
            column(Invoice_Disc__Code; "Invoice Disc. Code") { }
            column(Due_Date; "Due Date")
            { }
            column(Payment_Terms_Code; "Payment Terms Code") { }
            column(Salesperson_Code; "Salesperson Code") { }
            column(Currency_Code; "Currency Code") { }

            column(No_; "No.") { }



            dataitem("Company Information"; "Company Information")
            {
                column(Name; Name) { }
                column(Address; "Address") { }
                column(Phone_No_; "Phone No.") { }
                column(City; City) { }
                column(Country_Region_Code; "Country/Region Code") { }
                column(E_Mail; "E-Mail") { }
                column(Home_Page; "Home Page") { }
                column(Picture; Picture) { }
                column(Bank_Account_No_; "Bank Account No.") { }
                column(Bank_Name; "Bank Name") { }
                column(IBAN1; IBAN) { }
                column(SWIFT_Code; "SWIFT Code") { }

                column(Address_3; Address)
                { }
                column(City_2; City)
                { }
                column(Country_Region; "Country/Region Code") { }
                column(Phone_No; "Phone No.") { }
                column(Name_2; Name)
                { }
                column(AmountInWords; AmountInWords) { }


                dataitem("Sales Invoice Line"; "Sales Invoice Line")
                {
                    DataItemLinkReference = "Sales Invoice Header";
                    DataItemLink = "Document No." = field("No.");
                    DataItemTableView = sorting("Document No.", "Line No.");
                    RequestFilterFields = "No.", Description;
                    column(Item_Category_Code; "Item Category Code") { }
                    column(Item_Reference_No_; "Item Reference No.") { }
                    column(Description; Description)
                    {
                    }
                    column(Quantity; Quantity) { }
                    column(Unit_of_Measure_Code; "Unit of Measure Code") { }
                    column(Unit_Price; "Unit Price")
                    { }
                    column(Line_Amount; "Line Amount")
                    { }
                    column(Line_Discount__; "Line Discount %")
                    { }

                    column(Sr_No; Sr_No) { }
                    trigger OnAfterGetRecord()
                    begin
                        Sr_No += 1;


                        Amountt += "Line Amount";
                        RepCheck.InitTextVariable();
                        RepCheck.FormatNoText(NoText, "Amountt", '');
                        AmountInWords := NoText[1];
                    end;
                }
                trigger OnPreDataItem()
                begin
                    Sr_No := 0;
                end;



            }

        }
    }

    // requestpage
    // {
    //     layout
    //     {
    //         area(Content)
    //         {
    //             group(GroupName)
    //             {
    //                 field(Name; SourceExpression)
    //                 {
    //                     ApplicationArea = All;



    //     actions
    //     {
    //         area(processing)
    //         {
    //             action(ActionName)
    //             {
    //                 ApplicationArea = All;

    //             }
    //         }
    //     }
    // }

    // rendering
    // {
    //     layout(LayoutName)
    //     {
    //         Type = RDLC;
    //         LayoutFile = 'mylayout.rdl';
    //     }
    // }

    var
        myInt: Integer;
        Sr_No: Integer;
        RepCheck: Report "Check";
        NoText: array[2] of text;
        AmountInWords: Text[250];
        Amountt: Decimal;
}
