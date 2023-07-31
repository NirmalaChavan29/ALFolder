report 59010 "Commercial Invoice Bulk_Green"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    Caption = 'Commercial Invoice Bulk Orchid';
    PreviewMode = PrintLayout;
    RDLCLayout = './CommercialInvoiceBulk.rdl';

    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            RequestFilterFields = "No.";

            column(No_; "No.")
            {
            }
            column(Your_Reference; "Your Reference")
            {
            }
            column(NameLogo; CompanyInfo."Picture 2")
            {
            }
            column(Currency_Code; "Currency Code")
            {
            }

            column(LC_No_; "LC No.")
            {
            }
            column(RSPL_Country_of_Origin; "RSPL Country of Origin")
            {
            }
            column(REDM_Discharge_Port; "REDM Discharge Port")
            {
            }
            column(RSPL_Final_Destination; "RSPL Final Destination")
            {
            }
            column(REDM_Vessel_Code; "REDM Vessel Code")
            {
            }
            column(REDM_Voyage_No_; "REDM Voyage No.")
            {
            }
            column(REDM_Load_Port; "REDM Load Port")
            {
            }
            column(RSPL_Proforma_Invoice_No_; "RSPL Proforma Invoice No.")
            {
            }
            column(RSPL_Notify_Party; "RSPL Notify Party")
            {
            }
            column(CustomerTRN; Customer."VAT Registration No.")
            {
            }
            column(CaptionReport; CaptionReport)
            {
            }
            column(BankAccountName; BaccName)
            {
            }
            column(BankAccountNo; BAccNo)
            {
            }
            column(BankAccountSWIF; BSwift)
            {
            }
            column(BankAccountIBAN; BBAN)
            {
            }
            column(BankAccountBranch; BAccBranch)
            {
            }
            column(ShipingMethod; ShipingMethod.Description)
            {
            }
            column(payTerms; payTerms.Description)
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
            column(CompanyInfoArabicname; CompanyInfo."Company Arabic Name")
            {
            }
            column(CompanyInfoCountry; CompanyInfo."Country/Region Code")
            {
            }
            column(CompanyInfoPostCode; CompanyInfo."Post Code")
            {
            }
            column(CompanyInfoPicure2; CompanyInfo."Picture 2")
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
            column(CompanyInfoLogoHeade; CompanyInfo.Picture)
            {
            }
            column(CompanyPhoneImg; CompanyInfo.PhoneImage)
            {
            }
            column(CompanyEmailImg; CompanyInfo.EmailImage)
            {
            }
            column(CompanyPWebImg; CompanyInfo.WebImage)
            {
            }
            column(CompanyInfoWeb; CompanyInfo."Home Page")
            {
            }
            column(RSPL_Customer_Po_Date; "RSPL Customer Po Date")
            {
            }
            column(CountryofOrine; CountrOrigiREc.Name)
            {
            }
            column(CountryFinalDestination; COuntryFInalRec.Name)
            {
            }
            column(Due_Date; "Due Date")
            {
            }
            column(External_Document_No_; "External Document No.")
            {
            }
            column(Delivery_Terms; "REDM Delivery Type")
            {
            }
            column(Posting_Date; "Posting Date")
            {
            }
            column(Order_No_; "Order No.")
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
            column(CompanyInfoTRN; CompanyInfo."VAT Registration No.")
            {
            }
            column(Customer; Customer."Fax No.")
            {
            }
            column(Ship_to_Address; "Ship-to Address")
            {
            }
            column(Ship_to_Address_2; "Ship-to Address 2")
            {
            }
            column(Ship_to_City; "Ship-to City")
            {
            }
            column(Ship_to_Country_Region_Code; "Ship-to Country/Region Code")
            {
            }
            column(Ship_to_Name; "Ship-to Name")
            {
            }
            column(CompFaxNo; CompanyInfo."Fax No.")
            {
            }
            column(BankAccount; BBeneficiary)
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
            column(Vat_Clause; "Vat Clause")
            {
            }
            column(Description1; Description) { }
            dataitem(Remarks; Remarks)
            {
                DataItemLink = "Order No" = field("Order No.");

                column(Order_No; "Order No")
                {
                }
                column(Comment; Comment)
                {
                }
            }
            dataitem("Sales Invoice Line"; "Sales Invoice Line")
            {
                DataItemLink = "Document No." = field("No.");

                column(ItemNo; "No.")
                {
                }
                column(SrNo; SrNo)
                {
                }
                column(HS_Code; "HS Code")
                {
                }
                column(Desc2; "Description 2")
                {
                }
                column(Document_No_; "Document No.")
                {
                }
                column(Line_Amount; "Line Amount")
                {
                }
                column(Unit_Price; "Unit Price")
                {
                }
                column(Description; Description)
                {
                }
                column(Unit_of_Measure; "Unit of Measure")
                {
                }
                column(AmountTotal; AmountTotal) { }//Lalit
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
                column(Packing; Packing)
                {
                }
                column(NoOfDrums; "No of Drums")
                {
                }
                column(totalaedamount; totalaedamount)
                {
                }
                column(SSumAAmountAed; SSumAAmountAed)
                {
                }
                column(ExchRate; ExchRate)
                {
                }
                trigger OnAfterGetRecord()
                begin
                    if Type <> Type::" " then
                        // SrNo += 1;
                        /*   if "Sales Invoice Line".Type = "Sales Invoice Line".Type::"Charge (Item)" then
                              CurrReport.Skip(); */
                        /*    if "Sales Invoice Line".Type = "Sales Invoice Line".Type::"G/L Account" then
                               CurrReport.Skip(); */
                        //  if "Sales Invoice Line".Type = "Sales Invoice Line".Type::"Fixed Asset" then
                        //    CurrReport.Skip();
                        if "Sales Invoice Line".Type = "Sales Invoice Line".Type::" " then CurrReport.Skip();
                    VatAmt := ("VAT %" * "VAT Base Amount") / 100;
                    VatAmtS := VatAmtS + VatAmt;
                    AmountTotal := AmountTotal + "Amount Including VAT";
                    //Haider
                    GeneralRec.get();
                    IF (GeneralRec."LCY Code" <> "Sales Invoice Header"."Currency Code") and ("Sales Invoice Header"."Currency Code" <> 'AED') then
                        totalaedamount := (AmountTotal / "Sales Invoice Header"."Currency Factor")
                    ELSE
                        IF (GeneralRec."LCY Code" = "Sales Invoice Header"."Currency Code") then
                            totalaedamount := (AmountTotal / "Sales Invoice Header"."Currency Factor")
                        ELSE
                            totalaedamount := (AmountTotal);

                    SSumAAmountAed := totalaedamount;
                    //Haider
                    AmtToWordCu.InitTextVariable;
                    AmtToWordCu.FormatNoText(NoText, AmountTotal, "Sales Invoice Header"."Currency Code");
                    AMountInW := NoText[1];
                    AmtToWordCu.FormatNoText(NoText1, VatAmtS, "Sales Invoice Header"."Currency Code");
                    AMountInWTax := NoText1[1];
                    ExchRate := 1 / "Sales Invoice Header"."Currency Factor";
                    //LP
                    if ItemRef <> "No." then begin
                        TempSalesLine.Reset();
                        TempSalesLine.SetRange("Document No.", "Document No.");
                        TempSalesLine.SetRange("No.", "No.");
                        if TempSalesLine.FindSet then
                            repeat
                                ItemRef := TempSalesLine."No.";

                            until TempSalesLine.Next = 0;
                        SrNo += 1;
                        //LP
                    end;
                end;
            }
            trigger OnAfterGetRecord()
            begin
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
                if CompanyInfo.PAN = '' then
                    ComPANcapt := ''
                else
                    ComPANcapt := 'PAN:';
                if CompanyInfo."VAT Registration No." = '' then
                    ComTRNcapt := ''
                else
                    ComTRNcapt := 'TRN No./GST No.:';
                if CompanyInfo."IEC Code" = '' then
                    ComIECcapt := ''
                else
                    ComIECcapt := 'IEC CODE:';
                Customer.Reset();
                if Customer.get("Sell-to Customer No.") then;
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
                    CusTRNcapt := 'TRN No./GST No.: ';
                if CountrOrigiREc.get("RSPL Country of Origin") then;
                if COuntryFInalRec.get("RSPL Final Destination") then;
                SalesPersonCode.Reset();
                if SalespersonCode.get("Salesperson Code") then;
                IF PortMaster.Get("REDM Load Port", PortMaster.Type::"Load Port") THEN PortDescription := PortMaster.Decription;
                IF PortMaster.Get("REDM Vessel Code", PortMaster.Type::Vessel) THEN VesselDescription := PortMaster.Decription;
                IF PortMaster.Get("REDM Discharge Port", PortMaster.Type::"Discharge Port") THEN DischargeDescription := PortMaster.Decription;

                //LP
                Recdimentionvalue.Reset();
                Recdimentionvalue.SetRange(Code, "REDM Delivery Type");
                if Recdimentionvalue.FindFirst then begin
                    if Recdimentionvalue."Dimension Code" = 'DELIVERY TYPE' then
                        Description := Recdimentionvalue.Name;
                end;
                //LP
                BankAccount.Reset();
                BankAccount.SetRange("No.", "Bank Account");
                if BankAccount.FindFirst then begin
                    BaccName := BankAccount.Name;
                    BAccNo := BankAccount."Bank Account No.";
                    BAccBranch := BankAccount."Bank Branch No.";
                    BBAN := BankAccount.IBAN;
                    BSwift := BankAccount."SWIFT Code";
                    BBeneficiary := BankAccount."RSPL Benificiary";


                end;

            end;

            trigger OnPreDataItem()
            begin
                if Reportcaption = 1 then CaptionReport := 'Commercial Invoice';
                //LP
                // if Reportcaption = 2 then CaptionReport := 'Tax Invoice';
                //LP
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
                    OptionCaption = 'Commercial Invoice';
                }
            }
        }
    }
    var
        myInt: Integer;
        GeneralRec: Record "General Ledger Setup";
        totalaedamount: Decimal;
        ExchRate: Decimal;
        SSumAAmountAed: Decimal;
        CaptionReport: text;
        VatAmtS: Decimal;
        AmountTotal: Decimal;
        Reportcaption: Option;
        CompanyInfo: Record "Company Information";
        ComTRNcapt: Text[50];
        CountrOrigiREc: Record "Country/Region";
        COuntryFInalRec: Record "Country/Region";
        ComIECcapt: Text[50];
        ComPANcapt: Text[50];
        CusTRNcapt: Text[50];
        CustIECcapt: Text[50];
        CustPANcapt: Text[50];
        BankAccount: Record "Bank Account";
        BaccName: Text[250];
        BAccNo: text[30];
        BBAN: Code[50];
        BSwift: Code[20];
        BAccBranch: Text[20];
        BBeneficiary: Text[100];
        AMountInW: text[250];
        AMountInWTax: text[250];
        VatAmt: Decimal;
        PortDescription: text[100];
        VesselDescription: text[100];
        DischargeDescription: text[100];
        VesseleDescription: text[100];
        payTerms: record "Payment Terms";
        ShipingMethod: record "Shipment Method";
        Customer: record Customer;
        SalesPersonCode: Record "Salesperson/Purchaser";
        PortMaster: Record "REDM Port Master";
        RepCheck: Report Check;
        NoText: array[2] of Text[250];
        NoText1: array[2] of Text[250];
        SrNo: Integer;
        AmtToWordCu: Codeunit AmountToWords;
        TempSalesLine: Record "Sales Invoice Line";
        ItemRef: Code[50];
        salesheader: Record "Sales Header";
        "SalesInvoiceHeader": Record "Sales Invoice Header";
        Description: Text[50];
        Recdimentionvalue: Record "Dimension Value";
        NameSalesheader: Text[50];

}
