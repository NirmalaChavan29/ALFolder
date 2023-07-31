report 50127 CustomerReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Customer Report';
    RDLCLayout = 'CustomerReport.rdl';


    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {




            column(Sell_to_Customer_No_; "Sell-to Customer No.")
            {

            }
            column(No_; "No.") { }
            column(Document_Name; "Document Name")
            { }
            column(CustPost; CustPost) { }
            column(CustPost1; CustPost1)
            { }
            column(abc; abc) { }

            column(ab; ab) { }
            column(xyz; xyz) { }
            trigger OnAfterGetRecord()
            var
                Cust: Record Customer;
                Cust1: Record "Customer Posting Group";
                Pay: Record "Payment Terms";

            // begin
            //     Cust.SetRange("No.", "Sales Header"."Sell-to Customer No.");
            //     if Cust.FindFirst() then begin
            //         CustPost := cust."Document Name";
            //         Cust1.SetRange("Code", "Cust"."Customer Posting Group");
            //         if Cust1.FindFirst() then
            //             CustPost1 := Cust1."Description";
            //         begin
            //             Disc.SetRange("Code", Cust."Customer Disc. Group");
            //             if Disc.FindFirst() then
            //                 abc := Disc."Description";







            //         end;

            //   end;
            // end;
            begin
                MyLongString := Pay.Description;
                Cust.SetRange("No.", "Sales Header"."Sell-to Customer No.");
                if Cust.FindSet() then begin
                    abc := cust."Customer Posting Group";

                    Pay.SetRange("Code", Cust."Payment Terms Code");
                    if Pay.FindSet() then
                        CustPost1 := Pay.Description;
                    New := CopyStr(abc, 1, 2);
                    ab := New + Pay.Description;
                    // xyz := ab.Replace('EU', 'FO');
                    if cust."Customer Posting Group" = 'EU' then
                        xyz := 'FO' + Pay.Description
                    else
                        if cust."Customer Posting Group" = 'EU1' then
                            xyz := 'DOM' + Pay.Description;




                end;
            end;


        }
    }
    var
        myInt: Integer;
        CustPost: Text[100];
        CustPost1: Text[100];
        Disc: Record "Customer Discount Group";
        abc: Text[100];
        MyLongString: Text[20];

        NewString: Text[100];
        New: Text[50];
        ab: Text[50];
        xyz: Text[50];

}



