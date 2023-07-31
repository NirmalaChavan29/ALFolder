report 59012 "Purchase Order_Green"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    Caption = 'Purchase Order Orchid';
    PreviewMode = PrintLayout;
    RDLCLayout = './PurchaseOrder.rdl';

    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            column(PurNo_; "No.")
            {
            }
            column(DeliveryDesc; DeliveryDesc)
            {
            }
            //column(){}
            column(REDM_Deal_Remarks; "REDM Deal Remarks")
            {
            }
            column(Your_Reference; "Your Reference")
            {
            }
            column(Currency_Code; "Currency Code")
            {
            }
            column(SrNo; SrNo)
            {
            }
            column(Posting_Date; "Posting Date")
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
            column(Address2; CompanyInfo."Address 2")
            {
            }
            column(PhoneNo; CompanyInfo."Phone No.")
            {
            }
            column(CompFaxNo; CompanyInfo."Fax No.")
            {
            }
            column(CompanyInfoEmail; CompanyInfo."E-Mail")
            {
            }
            column(PostCode; CompanyInfo."Post Code")
            {
            }

            column(REDM_Work_Description; "REDM Work Description")
            {
            }
            //EScolumn(External_Document_No_; "External Document No."){}
            column(CompanyInfoCountry; CompanyInfo."Country/Region Code")
            {
            }
            column(CompanyInfoName; CompanyInfo.Name)
            {
            }
            column(CompCity; CompanyInfo.City)
            {
            }
            column(CompCountry; CompanyInfo.County)
            {
            }

            column(CompanyInfoState; CompanyInfo.State)
            {
            }
            column(CompanyInfoArabicname; CompanyInfo."Company Arabic Name")
            {
            }
            column(CompanyInfoICE; CompanyInfo."IEC Code")
            {
            }
            column(CompanyInfo; CompanyInfo.PAN)
            {
            }
            column(payTerms; payTerms.Description)
            {
            }
            column(ShipingMethod; ShipingMethod.Description)
            {
            }
            column(vendorCity; vendor.City)
            {
            }
            column(vendorICE; vendor."IEC Code")
            {
            }
            column(vendorPAN; vendor.PAN)
            {
            }
            column(vendorCounty; vendor."Country/Region Code")
            {
            }
            column(vendorPhone; vendor."Phone No." + ' / ' + vendor."Fax No.")
            {
            }
            column(vendorEmail; vendor."E-Mail")
            {
            }
            column(vendorState; vendor.State)
            {
            }
            column(vendorTRN; vendor."VAT Registration No.")
            {
            }
            column(vendorImportCode; vendor."Import Code")
            {
            }
            //EScolumn(Contact_Name; "Contact Name"){}
            column(CompanyInfoPicure2; CompanyInfo."Picture 2")
            {
            }
            column(Delivery_Terms; "Delivery Terms")
            {
            }
            column(Delivery_Date; "Delivery Date")
            {
            }
            column(Buy_from_Vendor_Name; "Buy-from Vendor Name")
            {
            }
            column(Buy_from_Vendor_No_; "Buy-from Vendor No.")
            {
            }
            column(Buy_from_Address; "Buy-from Address")
            {
            }
            column(Buy_from_Address_2; "Buy-from Address 2")
            {
            }
            column(Buy_from_City; "Buy-from City")
            {
            }
            column(Buy_from_Post_Code; "Buy-from Post Code")
            {
            }
            column(CompanyInfoTRN; CompanyInfo."VAT Registration No.")
            {
            }
            column(Purchaser_Code; "Purchaser Code")
            {
            }
            column(PurchaserCodeEmail; PurchaserCode."E-Mail")
            {
            }
            column(PurchaserCodePhone; PurchaserCode."Phone No.")
            {
            }
            column(DischargeDescription; DischargeDescription)
            {
            }
            column(VesselDescription; VesselDescription)
            {
            }
            column(PortDescription; PortDescription)
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
            column(BankAccount; BankAccount."RSPL Benificiary")
            {
            }
            column(BankAccountBranch; BankAccount."Bank Branch No.")
            {
            }
            column(Quote_No_; "Quote No.")
            {
            }
            column(Quote_Date; "Quote Date")
            {
            }
            column(CompanyInfoLogo; CompanyInfo.Picture)
            {
            }
            column(CompanyInfoLogoHeade; CompanyInfo.Picture)
            {
            }
            column(NameLogo; CompanyInfo."Picture 2")
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
            dataitem(Remarks; Remarks)
            {
                DataItemLink = "Order No" = field("No.");

                column(Order_No; "Order No")
                {
                }
                column(Comment; Comment)
                {
                }
            }
            dataitem("Purchase Line"; "Purchase Line")
            {
                DataItemLink = "Document No." = field("No.");

                column(Document_No_; "Document No.")
                {
                }
                column(HS_Code; "HS Code")
                {
                }
                column(No_; "No.")
                {
                }

                column(Unit_of_Measure_Code; "Unit of Measure Code")
                {
                }
                column(Line_Amount; "Line Amount")
                {
                }
                column(Description; Description)
                {
                }
                column(Quantity; Quantity)
                {
                }
                column(Unit_Cost; "Unit Cost")
                {
                }
                column(Description_2; "Description 2")
                {
                }
                column(VAT__; "VAT %")
                {
                }
                column(VAT_Base_Amount; "VAT Base Amount")
                {
                }
                column(Amount_Including_VAT; "Amount Including VAT")
                {
                }
                column(Packing; Packing)
                {
                }
                column(NoOfDrums; "No of Drums")
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
                column(desciptiondata; desciptiondata)
                {
                }
                column(ExchRate; ExchRate)
                {
                }
                column(Location_Code; "Location Code")
                {
                }
                trigger OnAfterGetRecord()
                begin
                    if "Purchase Line".Type = "Purchase Line".Type::" " then CurrReport.Skip();
                    if Type <> Type::" " then SrNo += 1;
                    VatAmt := ("VAT %" * "VAT Base Amount") / 100;
                    totalVatamt := totalVatamt + VatAmt;
                    tOTALOaMT := tOTALOaMT + "Amount Including VAT";
                    if "Purchase Line".Type = "Purchase Line".Type::Item then
                        desciptiondata := "Purchase Line".Description
                    else
                        desciptiondata := "Purchase Line"."Description 2";
                    //Haider
                    GeneralRec.get();
                    IF (GeneralRec."LCY Code" <> "Purchase Header"."Currency Code") and ("Purchase Header"."Currency Code" <> 'AED') then
                        totalaedamount := (tOTALOaMT / "Purchase Header"."Currency Factor")
                    ELSE
                        IF (GeneralRec."LCY Code" = "Purchase Header"."Currency Code") then
                            totalaedamount := (tOTALOaMT / "Purchase Header"."Currency Factor")
                        ELSE
                            totalaedamount := (tOTALOaMT);
                    SSumAAmountAed := totalaedamount;
                    //Haider
                    AmtToWordCu.InitTextVariable;
                    AmtToWordCu.FormatNoText(NoText, tOTALOaMT, "Purchase Header"."Currency Code");
                    AMountInW := NoText[1];
                    AmtToWordCu.FormatNoText(NoText1, totalVatamt, "Purchase Header"."Currency Code");
                    AMountInWTax := NoText1[1];
                    ExchRate := SSumAAmountAed / tOTALOaMT;
                end;
            }
            trigger OnAfterGetRecord()
            begin
                CLEAR(DeliveryDesc);
                DimSetEntry2.RESET;
                DimSetEntry2.SETFILTER("Dimension Code", 'DELIVERY TYPE');
                DimSetEntry2.SETRANGE(Code, "Purchase Header"."REDM Delivery Type");
                if DimSetEntry2.FINDFIRST then begin
                    DeliveryDesc := DimSetEntry2.Name;
                end;
                SrNo := 0;
                CompanyInfo.get;
                CompanyInfo.CalcFields(Picture);
                CompanyInfo.CalcFields(PhoneImage);
                CompanyInfo.CalcFields(EmailImage);
                CompanyInfo.CalcFields(WebImage);
                CompanyInfo.CalcFields("Picture 2");
                CompanyInfo.CalcFields(FooterPicture);
                CompanyInfo.CalcFields(FooterLOgo);
                payTerms.Reset();
                if payTerms.get("Payment Terms Code") then;
                ShipingMethod.Reset();
                if ShipingMethod.get("Shipment Method Code") then;
                vendor.Reset();
                if vendor.get("Buy-from Vendor No.") then;
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
                if vendor.PAN = '' then
                    CustPANcapt := ' '
                else
                    CustPANcapt := 'PAN:';
                if vendor."IEC Code" = '' then
                    CustIECcapt := ''
                else
                    CustIECcapt := 'IEC CODE:';
                if vendor."VAT Registration No." = '' then
                    CusTRNcapt := ''
                else
                    CusTRNcapt := 'TRN No./GST No.: ';
                PurchaserCode.Reset();
                if PurchaserCode.get("Purchaser Code") then;
                IF PortMaster.Get("REDM Load Port", PortMaster.Type::"Load Port") THEN PortDescription := PortMaster.Decription;
                IF PortMaster.Get("REDM Vessel Code", PortMaster.Type::Vessel) THEN VesselDescription := PortMaster.Decription;
                IF PortMaster.Get("REDM Discharge Port", PortMaster.Type::"Discharge Port") THEN DischargeDescription := PortMaster.Decription;
                BankAccount.Reset();
                if BankAccount.get("Bank Account") then;

            end;
        }
    }
    var
        BankAccount: Record "Bank Account";
        Contactrec: Record Contact;
        DimSetEntry2: Record "Dimension Value";
        DeliveryDesc: Text[100];
        GeneralRec: Record "General Ledger Setup";
        totalaedamount: Decimal;
        ExchRate: Decimal;
        SSumAAmountAed: Decimal;
        AMountInW: text[250];
        ComTRNcapt: Text[50];
        ComIECcapt: Text[50];
        ComPANcapt: Text[50];
        tOTALOaMT: Decimal;
        totalVatamt: Decimal;
        CusTRNcapt: Text[50];
        CustIECcapt: Text[50];
        CustPANcapt: Text[50];
        VatAmt: Decimal;
        PortDescription: text[100];
        VesselDescription: text[100];
        DischargeDescription: text[100];
        payTerms: record "Payment Terms";
        CompanyInfo: Record "Company Information";
        ShipingMethod: record "Shipment Method";
        vendor: record Vendor;
        PurchaserCode: Record "Salesperson/Purchaser";
        PortMaster: Record "REDM Port Master";
        desciptiondata: Text[100];
        RepCheck: Report Check;
        NoText: array[2] of Text[250];
        NoText1: array[2] of Text[250];
        AMountInWTax: text[250];
        SrNo: Integer;
        AmtToWordCu: Codeunit AmountToWords;

}
