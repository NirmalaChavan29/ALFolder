report 59013 "Proforma Invoice_Green"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    Caption = 'Proforma Invoice Orchid';
    PreviewMode = PrintLayout;
    RDLCLayout = './ProformaInvoice.rdl';

    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            RequestFilterFields = "No.";

            column(No_; "No.")
            {
            }
            column(DeliveryDesc; DeliveryDesc)
            {
            }
            column(Vat_Clause; "Vat Clause")
            {
            }

            column(Customer_No_; "Sell-to Customer No.")
            {
            }
            column(NameLogo; CompanyInfo."Picture 2")
            {
            }
            //column(External_Document_No_; "External Document No.") { }
            column(Due_Date; "Due Date")
            {
            }
            column(REDM_Sales_Order_No_; "REDM Sales Order No.")
            {
            }
            column(Your_Reference; "Your Reference")
            {
            }
            column(RSPL_Proforma_Invoice_Date; "RSPL Proforma Invoice Date")
            {
            }
            column(RSPL_Proforma_Invoice_No_; "RSPL Proforma Invoice No.")
            {
            }
            column(BankAccountName; BankAccount.Name)
            {
            }
            column(BankAccountNo; BankAccount."Bank Account No.")
            {
            }
            column(BankAccountSWIF; BankAccount."SWIFT Code")
            {
            }
            column(BankAccountIBAN; BankAccount.IBAN)
            {
            }
            column(CompanyInfoPicure2; CompanyInfo."Picture 2")
            {
            }
            column(BankAccountBranch; BankAccount."Bank Branch No.")
            {
            }
            column(ShipingMethod; ShipingMethod.Description)
            {
            }
            column(payTerms; payTerms.Description)
            {
            }
            column(CompanyInfoArabicname; CompanyInfo."Company Arabic Name")
            {
            }
            column(Name; CompanyInfo.Name)
            {
            }
            column(FooterPicture; CompanyInfo.FooterPicture) { }
            column(FooterLogo; CompanyInfo.FooterLOgo) { }
            column(Address; CompanyInfo.Address)
            {
            }
            column("Address2"; CompanyInfo."Address 2")
            {
            }
            column(PhoneNo; CompanyInfo."Phone No.")
            {
            }
            column(CompanyInfoCity; CompanyInfo.City)
            {
            }
            column(CompanyInfoCountry; CompanyInfo."Country/Region Code")
            {
            }
            column(CompanyInfoPostCode; CompanyInfo."Post Code")
            {
            }
            column(CompanyInfoTRN; CompanyInfo."VAT Registration No.")
            {
            }
            column(Customer; Customer."Fax No.")
            {
            }
            column(CompFaxNo; CompanyInfo."Fax No.")
            {
            }
            column(External_Document_No_; "External Document No.")
            {
            }
            column(EMail; CompanyInfo."E-Mail")
            {
            }
            column(CompanyInfoIEC; CompanyInfo."IEC Code")
            {
            }
            column(CompanyInfoPAN; CompanyInfo.PAN)
            {
            }
            column(CompanyInfoState; CompanyInfo.State)
            {
            }
            column(Bill_to_Name; "Sell-to Customer Name")
            {
            }
            column(Sell_to_Customer_No_; "Sell-to Customer No.")
            {
            }
            column(Bill_to_Address; "sell-to Address")
            {
            }
            column(Bill_to_City; "sell-to City")
            {
            }
            column(Bill_to_County; Customer."Country/Region Code")
            {
            }
            column(Sell_to_Phone_No_; "Sell-to Phone No.")
            {
            }
            column(Sell_to_E_Mail; "Sell-to E-Mail")
            {
            }
            column(BL_Date; "BL Date")
            {
            }
            column(BL_No_; "BL No.")
            {
            }
            column(CustomerIEC; Customer."IEC Code")
            {
            }
            column(CustomerPAN; Customer.PAN)
            {
            }
            column(CustomerState; Customer.State)
            {
            }
            column(CustomerAdd1; Customer."Address 2")
            {
            }
            column(CustomerAdd2; Customer.Address)
            {
            }
            column(CustomerPost; Customer."Post Code")
            {
            }
            column(CustomerTRN; Customer."VAT Registration No.")
            {
            }
            column(Delivery_Terms; "Delivery Terms")
            {
            }
            column(Posting_Date; "Posting Date")
            {
            }
            column(Order_No_; "REDM Sales Order No.")
            {
            }
            column(PortDescription; PortDescription)
            {
            }
            column(VesselDescription; VesselDescription)
            {
            }
            column(DischargeDescription; DischargeDescription)
            {
            }
            column(CompanyInfoLogoHeade; CompanyInfo.Picture)
            {
            }
            column(RSPL_Customer_Po_Date; "RSPL Customer Po Date")
            {
            }
            column(Reportcaption; Reportcaption)
            {
            }
            column(CaptionReport; CaptionReport)
            {
            }
            column(CompanyPhoneImg; CompanyInfo.PhoneImage)
            {
            }
            column(CompanyEmailImg; CompanyInfo.EmailImage)
            {
            }
            column(CountryofOrine; CountrOrigiREc.Name)
            {
            }
            column(CountryFinalDestination; COuntryFInalRec.Name)
            {
            }
            column(CompanyPWebImg; CompanyInfo.WebImage)
            {
            }
            column(CompanyInfoWeb; CompanyInfo."Home Page")
            {
            }
            column(CompanyInfoEmail; CompanyInfo."E-Mail")
            {
            }
            column(BankAccount; BankAccount."RSPL Benificiary")
            {
            }
            column(CustPANcapt; CustPANcapt)
            {
            }
            column(CustIECcapt; CustIECcapt)
            {
            }
            column(CusTRNcapt; CusTRNcapt)
            {
            }
            column(ComIECcapt; ComIECcapt)
            {
            }
            column(ComPANcapt; ComPANcapt)
            {
            }
            column(ComTRNcapt; ComTRNcapt)
            {
            }
            column(Currency_Code; "Currency Code")
            {
            }
            column(ExchRate; ExchRate)
            {
            }
            dataitem(Remarks; Remarks)
            {
                DataItemLink = "Order No" = field("No.");

                column(Order_No; "Order No")
                {
                }
                column(Comment; Comment)
                {
                }
                column(CompanyInfoLogo; CompanyInfo.Picture)
                {
                }
            }
            dataitem("Sales Line"; "Sales Line")
            {
                DataItemLink = "Document No." = field("No.");

                column(ItemNo; "No.")
                {
                }
                column(Line_No_; "Line No.") { }
                column(SrNo; SrNo)
                {
                }
                column(HS_Code; "HS Code")
                {
                }
                column(Document_No_; "Document No.")
                {
                }
                column(Line_Amount; "Line Amount")
                {
                }
                column(Description_2; "Description 2")
                {
                }
                column(Description; Description)
                {
                }
                column(Unit_of_Measure; "Unit of Measure")
                {
                }
                column(Quantity; Quantity)
                {
                }
                column(Amount; Amount)
                {
                }
                column(VAT__; "VAT %")
                {
                }
                column(Amount_Including_VAT; "Amount Including VAT")
                {
                }
                column(NoText; AMountInW)
                {
                }
                column(NoText1; AMountInWTax)
                {
                }
                column(VatAmt; VatAmt)
                {
                }
                column(Unit_Price; "Unit Price")
                {
                }
                column(Packing; Packing)
                {
                }
                column(NoOfDrums; "No of Drums")
                {
                }
                trigger OnAfterGetRecord()
                begin
                    SetCurrentKey("Line No.");
                    if "Sales Line".Type = "Sales Line".Type::" " then CurrReport.Skip();
                    if Type <> Type::" " then



                        //SrNo += 1;
                    VatAmt := ("VAT %" * "VAT Base Amount") / 100;
                    VatAmtS := VatAmtS + VatAmt;
                    AmountTotal := AmountTotal + "Amount Including VAT";
                    //Haider
                    GeneralRec.get();
                    IF (GeneralRec."LCY Code" <> "Sales Header"."Currency Code") and ("Sales Header"."Currency Code" <> 'AED') then
                        totalaedamount := (AmountTotal / "Sales Header"."Currency Factor")
                    ELSE
                        IF (GeneralRec."LCY Code" = "Sales Header"."Currency Code") then
                            totalaedamount := (AmountTotal / "Sales Header"."Currency Factor")
                        ELSE
                            totalaedamount := (AmountTotal);
                    SSumAAmountAed := totalaedamount;
                    //Haider
                    //haider
                    AmtTOWordCU.InitTextVariable;
                    AmtTOWordCU.FormatNoText(NoText, AmountTotal, "Sales Header"."Currency Code");
                    AMountInW := NoText[1];
                    AmtTOWordCU.FormatNoText(NoText1, VatAmtS, "Sales Header"."Currency Code");
                    AMountInWTax := NoText1[1];
                    ExchRate := SSumAAmountAed / AmountTotal;



                    //ES
                    // ItemRef:="No.";
                    if ItemRef <> "No." then begin
                        TempSalesLine.Reset();
                        TempSalesLine.SetRange("Document No.", "Document No.");
                        TempSalesLine.SetRange("No.", "No.");
                        if TempSalesLine.FindSet then
                            repeat
                                ItemRef := TempSalesLine."No.";

                            until TempSalesLine.Next = 0;
                        SrNo += 1;
                    end;
                    //ES

                end;
            }
            trigger OnAfterGetRecord()
            begin
                Clear(ItemRef);
                //Haider
                /*
                                DimSetEntry2.reset;
                                DimSetEntry2.SetRange("Dimension Set ID", "Dimension Set ID");
                                DimSetEntry2.SetRange("Dimension Code", GLSetup."Shortcut Dimension 6 Code");
                                if DimSetEntry2.FindFirst() then begin

                                    //DimSetEntry2.CalcFields("Dimension Value Code");
                                    DeliveryDesc := DimSetEntry2."Dimension Value Code";
                                end;

                */
                CLEAR(DeliveryDesc);
                DimSetEntry2.RESET;
                DimSetEntry2.SETFILTER("Dimension Code", 'DELIVERY TYPE');
                DimSetEntry2.SETRANGE(Code, "Sales Header"."REDM Delivery Type");
                if DimSetEntry2.FINDFIRST then begin
                    DeliveryDesc := DimSetEntry2.Name;
                end;
                /*
                                DimSetEntry2.Reset();
                                DimSetEntry2.SetRange("Dimension Code", "Sales Header"."REDM Delivery Type");
                                IF DimSetEntry2.find('-') then begin
                                    DeliveryDesc := DimSetEntry2.Name;
                                end;
                */
                //DeliveryType.Reset();
                //DeliveryType.SetRange(DeliveryType.);
                //Haider
                SrNo := 0;
                CompanyInfo.get;
                CompanyInfo.CalcFields(Picture);
                CompanyInfo.CalcFields(EmailImage);
                CompanyInfo.CalcFields(PhoneImage);
                CompanyInfo.CalcFields(WebImage);
                CompanyInfo.CalcFields("Picture 2");
                CompanyInfo.CalcFields(FooterPicture);
                CompanyInfo.CalcFields(FooterLOgo);
                payTerms.Reset();
                if payTerms.get("Payment Terms Code") then;
                ShipingMethod.Reset();
                if ShipingMethod.get("Shipment Method Code") then;
                Customer.Reset();
                if Customer.get("Sell-to Customer No.") then;
                if CompanyInfo.PAN = '' then
                    ComPANcapt := ''
                else
                    ComPANcapt := 'PAN:';
                if CompanyInfo."VAT Registration No." = '' then
                    ComTRNcapt := ''
                else
                    ComTRNcapt := 'TRN No./GST No.';
                if CompanyInfo."IEC Code" = '' then
                    ComIECcapt := ''
                else
                    ComIECcapt := 'IEC CODE:';
                if Customer.PAN = '' then
                    CustPANcapt := ' '
                else
                    CustPANcapt := 'PAN:';
                if Customer."IEC Code" = '' then
                    CustIECcapt := ''
                else
                    CustIECcapt := 'IEC CODE:';
                if Customer."VAT Registration No." = '' then
                    CusTRNcapt := ''
                else
                    CusTRNcapt := 'TRN No./GST No.';
                if CountrOrigiREc.get("RSPL Country of Origin") then;
                if COuntryFInalRec.get("RSPL Final Destination") then;
                SalesPersonCode.Reset();
                if SalespersonCode.get("Salesperson Code") then;
                IF PortMaster.Get("REDM Load Port", PortMaster.Type::"Load Port") THEN PortDescription := PortMaster.Decription;
                IF PortMaster.Get("REDM Vessel Code", PortMaster.Type::Vessel) THEN VesselDescription := PortMaster.Decription;
                IF PortMaster.Get("REDM Discharge Port", PortMaster.Type::"Discharge Port") THEN DischargeDescription := PortMaster.Decription;
                BankAccount.Reset();
                if BankAccount.get("Bank Account1") then;
            end;

            trigger OnPreDataItem()
            begin
                if Reportcaption = 1 then CaptionReport := 'Proforma Invoice';
                if Reportcaption = 2 then CaptionReport := 'Sales Order';
            end;
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                field(Reportcaption; Reportcaption)
                {
                    ApplicationArea = all;
                    Caption = 'Report Caption';
                    OptionCaption = ' ,Proforma Invoice,sales Order';
                }
            }
        }
    }
    var
        myInt: Integer;
        DeliveryType: Record 51411003;
        GLSetup: Record "General Ledger Setup";
        DimSetEntry2: Record "Dimension Value";
        DeliveryDesc: Text[100];
        ComTRNcapt: Text[50];
        totalaedamount: Decimal;
        GeneralRec: Record "General Ledger Setup";
        ExchRate: Decimal;
        SSumAAmountAed: Decimal;
        ComIECcapt: Text[50];
        ComPANcapt: Text[50];
        VatAmtS: Decimal;
        AmountTotal: Decimal;
        CountryOforigin: Text[100];
        FinalDestination: Text[100];
        CountrOrigiREc: Record "Country/Region";
        COuntryFInalRec: Record "Country/Region";
        CusTRNcapt: Text[50];
        CustIECcapt: Text[50];
        CustPANcapt: Text[50];
        CaptionReport: text;
        Reportcaption: Option;
        CompanyInfo: Record "Company Information";
        BankAccount: Record "Bank Account";
        AMountInW: text[250];
        AMountInWTax: text[250];
        VatAmt: Decimal;
        PortDescription: text[100];
        VesselDescription: text[100];
        DischargeDescription: text[100];
        payTerms: record "Payment Terms";
        ShipingMethod: record "Shipment Method";
        Customer: record Customer;
        SalesPersonCode: Record "Salesperson/Purchaser";
        PortMaster: Record "REDM Port Master";
        RepCheck: Report Check;
        NoText: array[2] of Text[250];
        NoText1: array[2] of Text[250];
        SrNo: Integer;
        AmtTOWordCU: Codeunit AmountToWords;
        TempSalesLine: Record "Sales Line";
        ItemRef: Code[50];
}
