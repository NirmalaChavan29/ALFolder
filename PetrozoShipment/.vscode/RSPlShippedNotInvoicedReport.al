report 50102 "Shipped Not Invoiced"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    Caption = 'Shipped Not Invoiced1';
    PreviewMode = PrintLayout;
    RDLCLayout = './ShippedNotInvoiced.rdl';

    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {


            column(DocumentNo; "No.")
            {

            }
            column(Sell_to_Customer_Name; "Sell-to Customer Name")
            {

            }
            column(External_Document_No_; "External Document No.")
            {

            }
            column(DocuNo; DocuNo)
            {

            }
            column(DocDate; DocDate)
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
            column(SaleHeaderFilter; SaleHeaderFilter)
            { }
            dataitem("Sales Line"; "Sales Line")
            {
                DataItemLink = "Document No." = field("No.");

                column(ItemNo; "No.")
                {

                }
                column(Description; Description)
                {

                }
                column(Qty__Shipped_Not_Invoiced; "Qty. Shipped Not Invoiced")
                {

                }
                column(Shipped_Not_Invoiced; "Shipped Not Invoiced")
                {

                }
                column(VAT__; "VAT %")
                {

                }
                column(Unit_Price; "Unit Price")
                {

                }




            }
            trigger OnAfterGetRecord()
            begin
                SalesShipmentHeader.SetRange("Order No.", "No.");
                if SalesShipmentHeader.Find('-') then begin
                    DocuNo := SalesShipmentHeader."No.";
                    DocDate := SalesShipmentHeader."Document Date";
                end;

            end;

            trigger OnPreDataItem()
            begin
                CompInfo.get;
                CompInfo.CalcFields(Picture);
                begin
                    If (StartDate > 0D) and (EndDate > 0D) then
                        SetRange("Due Date", StartDate, EndDate);


                end;
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

                }
            }
        }

        actions
        {
        }

        // trigger OnOpenPage()
        // begin
        //     if EndDate in [0D, 00000101D] then
        //         EndDateText := ''
        //     else
        //         EndDateText := Format(EndDate - 1);
        //     if StartDate in [0D, 00000101D] then
        //         StartDateText := ''
        //     else
        //         StartDateText := Format(StartDate - 1);
        // end;
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





    end;

    var
        SaleHeader: Record "Sales Header";
        SalesShipmentHeader: Record "Sales Shipment Header";
        DocuNo: Code[20];
        DocDate: Date;
        CompInfo: Record "Company Information";
        StartDate: Date;
        EndDate: Date;
        StartDateText: Text[10];
        EndDateText: text[10];
        SaleHeaderFilter: Text;
        ShowExpected: Boolean;

    procedure SetStartDate(DateValue: Date)
    begin
        StartDate := DateValue;
    end;

    procedure SetEndDate(DateValue: Date)
    begin
        EndDate := DateValue;
    end;

    procedure InitializeRequest(NewStartDate: Date; NewEndDate: Date; NewShowExpected: Boolean)
    begin
        StartDate := NewStartDate;
        EndDate := NewEndDate;
        ShowExpected := NewShowExpected;
    end;


}