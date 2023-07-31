report 50121 "Shipment Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Shipment Report';
    RDLCLayout = 'Shipment Report.rdl';



    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {

            column(No_; "No.")
            { }
            column(Sell_to_Customer_Name; "Sell-to Customer Name")
            {

            }

            column(Customer_Posting_Group; "Customer Posting Group")
            {

            }
            column(CustPost; CustPost) { }
            column(CustPost1; CustPost1) { }


            trigger OnAfterGetRecord()
            var
                SalesHeader: Record "Sales Header";
                Cust: Record Customer;
                Shipment: Record "Shipment Method";
            begin
                Cust.SetRange("No.", "Sales Invoice Header"."Sell-to Customer No.");
                if Cust.FindFirst() then
                    CustPost := cust."Shipment Method Code";
                begin

                    Shipment.SetRange("Code", Cust."Shipment Method Code");
                    if Shipment.FindFirst() then
                        CustPost1 := Shipment.Description;
            



                end;

            end;

        }

    }
    var
        CustPost: Text[100];
        CustPost1: Text[100];
}