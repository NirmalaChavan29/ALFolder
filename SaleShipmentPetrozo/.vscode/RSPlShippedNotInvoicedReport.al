report 50101 "Shipped Not Invoiced"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    Caption = 'Shipped Not Invoiced';
    PreviewMode = PrintLayout;
    RDLCLayout = './ShippedNotInvoiced.rdl';

    dataset
    {
        dataitem("Sales Shipment Header"; "Sales Shipment Header")
        {

            column(No_; "No.")
            {

            }
            column(Posting_Date; "Posting Date")
            {

            }
            column(CompInfoPicture; CompInfo.Picture)
            {

            }
            column(StartDate; StartDate)
            {

            }
            column(EndDate; EndDate)
            {

            }
            column(SalesShipmentHeaderFilter; SalesShipmentHeaderFilter)
            { }
            column(Order_No_; "Order No.")
            {

            }
            column(ItemNo; ItemNo)
            {

            }
            column(Des; Des)
            {

            }
            column(QtyShip; QtyShip)
            {

            }
            column(ShipNotIn; ShipNotIn)
            {

            }
            column(Price; Price)
            {

            }
            column(vat; vat)
            {

            }
            column(CustName; CustName)
            {

            }
            column(ExtNo; ExtNo)
            {

            }
            dataitem("Sales Shipment Line"; "Sales Shipment Line")
            {
                DataItemLink = "Document No." = field("No.");
                DataItemTableView = WHERE("Qty. Shipped Not Invoiced" = FILTER(> 0));





            }
            trigger OnAfterGetRecord()
            begin
                SaleLine.SetRange("Document No.", "Order No.");
                SaleLine.SetRange("Qty. Shipped Not Invoiced", 1, 100000000);
                if SaleLine.Find('-') then begin
                    ItemNo := SaleLine."No.";
                    Des := SaleLine.Description;
                    QtyShip := SaleLine."Qty. Shipped Not Invoiced";
                    ShipNotIn := SaleLine."Shipped Not Invoiced";
                    Price := SaleLine."Unit Price";
                    vat := SaleLine."VAT %";
                end;
                Cust.SetRange(Name, "Sell-to Customer Name");
                if Cust.FindSet() then begin
                    CustName := Cust.Name;
                end;

                SaleHeader.SetRange("No.", "Order No.");
                if SaleHeader.FindSet() then Begin
                    ExtNo := SaleHeader."External Document No.";
                End;
                SalesShipmentHeaderFilter := SalesShipmentHeader.GetFilters;

            end;



            trigger OnPreDataItem()
            begin
                CompInfo.get;
                CompInfo.CalcFields(Picture);
                begin
                    If (StartDate > 0D) and (EndDate > 0D) then
                        SetRange("Posting Date", StartDate, EndDate);


                end;
                if Reportcaption = 1 then CaptionReport := 'Order';




            end;
        }

    }
    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(StartingDate; StartDate)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'From Date';
                        ToolTip = 'Specifies the date from which the report or batch job processes information.';
                    }
                    field(EndingDate; EndDate)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'To Date';
                        ToolTip = 'Specifies the date to which the report or batch job processes information.';
                    }
                    field(Reportcaption; SaleHeader."Document Type")
                    {
                        ApplicationArea = All;
                        Caption = 'Document Type';
                        OptionCaption = 'Order';
                    }


                }
            }
        }

        actions
        {
        }

    }
    trigger OnPreReport()
    begin
        if EndDate in [0D, 00000101D] then
            EndDateText := ''
        else
            EndDateText := Format(EndDate - 1);
        if StartDate in [0D, 00000101D] then
            StartDateText := ''
        else
            StartDateText := Format(StartDate - 1);

        "Sales Shipment Line".SetFilter("Qty. Shipped Not Invoiced", '> 0');
        SaleLine.SetFilter("Shipped Not Invoiced", '>0');






    end;

    var
        Reportcaption: Option;

        CaptionReport: text[50];
        Reportcaption1: Option;

        CaptionReport1: text[50];
        SaleHeader: Record "Sales Header";
        SaleLine: Record "Sales Line";
        Cust: Record Customer;
        SalesShipmentHeader: Record "Sales Shipment Header";
        DocuNo: Code[20];
        DocDate: Date;
        CompInfo: Record "Company Information";
        StartDate: Date;
        EndDate: Date;
        StartDateText: Text[10];
        EndDateText: text[10];
        SalesShipmentHeaderFilter: Text;
        ShowExpected: Boolean;
        CustName: Text[100];
        ItemNo: Code[20];
        Des: Text[100];
        QtyShip: Decimal;
        ShipNotIn: Decimal;
        Price: Decimal;
        vat: Decimal;
        ExtNo: Code[35];


}