report 50100 "RSPLPurchase Order"
{
    RDLCLayout = './Purchase Order.rdl';
    DefaultLayout = RDLC;
    PreviewMode = PrintLayout;
    UsageCategory = Administration;
    ApplicationArea = all;
    Caption = 'Purchase Report';


    dataset
    {
        dataitem("Purchase Header"; 38)
        {
            DataItemTableView = SORTING("Document Type", "No.") ORDER(Ascending) WHERE("Document Type" = CONST(Order));
            RequestFilterFields = "No.";


            column(ShpToAddContact; ShipToaddressRec.Contact)
            {
            }
            column(ShpToAddPhoneNo; ShipToaddressRec."Phone No.")
            {
            }
            column(CntryDesc; CntryDesc)
            {
            }
            column(RequiredDate; "Purchase Header"."Expected Receipt Date")
            {
            }
            column(DocumentRequired; '')
            {
            }
            column(VendrContactName; VendrContactName)
            {
            }
            column(IncotrmsShipMtdDesc; IncotrmsShipMtdDesc)
            {
            }
            column(ShipmentModeDesc; ShipmentModeDesc)
            {
            }
            column(Comments1; Comments[1])
            {
            }
            column(Comments2; Comments[2])
            {
            }
            column(Comments3; Comments[3])
            {
            }
            column(Comments4; Comments[4])
            {
            }
            column(Comments5; Comments[5])
            {
            }
            column(Comments6; Comments[6])
            {
            }
            column(TermsAndCondn1; TermsAndCondn[1])
            {
            }
            column(TermsAndCondn2; TermsAndCondn[2])
            {
            }
            column(TermsAndCondn3; TermsAndCondn[3])
            {
            }
            column(TermsAndCondn4; TermsAndCondn[4])
            {
            }
            column(TermsAndCondn5; TermsAndCondn[5])
            {
            }
            column(TermsAndCondn6; TermsAndCondn[6])
            {
            }
            column(CompNm; CompInfo.Name)
            {
            }
            column(BankNm; CompInfo."Bank Name")
            {
            }
            column(BrchNo; CompInfo."Bank Branch No.")
            {
            }
            column(AccNo; CompInfo."Bank Account No.")
            {
            }
            column(SWIFT; CompInfo."SWIFT Code")
            {
            }
            column(IBAN; CompInfo.IBAN)
            {
            }
            column(Pic; CompInfo.Picture)
            {
            }
            column(C_ADD; CompInfo.Address + ' ' + CompInfo."Address 2")
            {
            }
            column(C_ADD2; CompInfo."Address 2")
            {
            }
            column(Comp_CityPostCodeCntryName; CompInfo.City + ' ' + CompInfo."Post Code" + ' ' + ContryRegnName)
            {
            }
            column(Comp_PhoneNo; CompInfo."Phone No.")
            {
            }
            column(Comp_PostCode; CompInfo."Post Code")
            {
            }
            column(Comp_CntctPersn; CompInfo."Contact Person")
            {
            }
            column(Comp_Email; CompInfo."E-Mail")
            {
            }
            column(Comp_CntryRegnCode; CompInfo."Country/Region Code")
            {
            }
            column(ContryRegnName; ContryRegnName)
            {
            }
            column(LocNM; Loc.Name)
            {
            }
            column(LocAdd; Loc.Address)
            {
            }
            column(LocAdd2; Loc."Address 2")
            {
            }
            column(LocCity; Loc.City)
            {
            }
            column(LocPhNo; Loc."Phone No.")
            {
            }
            column(LocCountry; Loc.County)
            {
            }
            column(LocPost; Loc."Post Code")
            {
            }
            column(LocEmail; Loc."E-Mail")
            {
            }
            column(Contact; Loc.Contact)
            {
            }
            column(BuyfromVM; "Purchase Header"."Buy-from Vendor Name")
            {
            }
            column(BuyfromVM2; "Purchase Header"."Buy-from Vendor Name 2")
            {
            }
            column(BuyfromAdd; "Purchase Header"."Buy-from Address")
            {
            }
            column(BuyfromAdd2; "Purchase Header"."Buy-from Address 2")
            {
            }
            column(BuyfromCity; "Purchase Header"."Buy-from City")
            {
            }
            column(BuyfromCont; "Purchase Header"."Buy-from Contact")
            {
            }
            column(BuyfromPostCode; "Purchase Header"."Buy-from Post Code")
            {
            }
            column(BuyfromCounty; "Purchase Header"."Buy-from County")
            {
            }
            column(No_; "Purchase Header"."No.")
            {
            }
            column(OrderDate; "Purchase Header"."Order Date")
            {
            }
            column(TransportMethod; "Purchase Header"."Transport Method")
            {
            }
            column(ShipMethodCode; "Purchase Header"."Shipment Method Code")
            {
            }
            column(Pay_Descr; PaymentTerms.Description)
            {
            }
            column(RequestedReceiptDate; "Purchase Header"."Requested Receipt Date")
            {
            }
            column(CurrencyCode; "Purchase Header"."Currency Code")
            {
            }
            column(CurrSym; Curr.Symbol)
            {
            }
            column(ShipToName; ShipToName)
            {
            }
            column(ShipToAdd; ShipToAdd)
            {
            }
            column(ShipTpAdd2; ShipTpAdd2)
            {
            }
            column(ShipToContry; ShipToContry)
            {
            }
            column(ShipToPostCode; ShipToPostCode)
            {
            }
            column(ShipToCity; ShipToCity)
            {
            }
            column(ShipToContReg; ShipToContReg)
            {
            }
            dataitem("Purchase Line"; 39)
            {
                DataItemLink = "Document Type" = FIELD("Document Type"), "Document No." = FIELD("No.");
                DataItemTableView = WHERE(Type = FILTER(<> "G/L Account"));

                column(SrNo; SrNo)
                {
                }
                column(DocumentNo; "Purchase Line"."Document No.")
                {
                }
                column(ItemNo; "Purchase Line"."No.")
                {
                }
                column(Description; "Purchase Line".Description)
                {
                }
                column(Quantity; "Purchase Line".Quantity)
                {
                }
                column(Amount; "Purchase Line".Amount)
                {
                }
                column(UnitPriceLCY; "Purchase Line"."Unit Price (LCY)")
                {
                }
                column(UnitCost; "Purchase Line"."Unit Cost")
                {
                }
                column(GrossWeight; "Purchase Line"."Gross Weight")
                {
                }
                column(INS; INS)
                {
                }
                column(Packing; Packing)
                {
                }
                column(NoOfPkg; NoOfPkg)
                {
                }
                trigger OnAfterGetRecord()
                begin
                    SrNo += 1;
                    CLEAR(NoOfPkg);
                    IF "Purchase Line"."Gross Weight" <> 0 THEN BEGIN
                        NoOfPkg := "Purchase Line".Quantity / "Purchase Line"."Gross Weight";
                    END;
                end;

                trigger OnPreDataItem()
                begin
                    SrNo := 0;
                end;
            }
            trigger OnAfterGetRecord()
            begin
                //<<RSPL - AR
                VendorRec.RESET;
                VendorRec.SETRANGE(VendorRec."No.", "Purchase Header"."Buy-from Vendor No.");
                IF VendorRec.FINDFIRST THEN VendrContactName := VendorRec.Contact;
                ShipmentMthdRec.RESET;
                ShipmentMthdRec.SETRANGE(Code, "Purchase Header"."Shipment Method Code");
                IF ShipmentMthdRec.FINDFIRST THEN IncotrmsShipMtdDesc := ShipmentMthdRec.Description;
                TransptMtdRec.RESET;
                TransptMtdRec.SETRANGE(Code, "Purchase Header"."Transport Method");
                IF TransptMtdRec.FINDFIRST THEN ShipmentModeDesc := TransptMtdRec.Description;
                /*
                PurchCommntRec.RESET;
                PurchCommntRec.SETRANGE("No.","Purchase Header"."No.");
                IF PurchCommntRec.FINDFIRST THEN
                  Comments :=  PurchCommntRec.Comment;
                */
                CLEAR(Comments);
                CLEAR(TermsAndCondn);
                i := 1;
                j := 1;
                PurchCommntRec.RESET;
                PurchCommntRec.SETRANGE(PurchCommntRec."No.", "Purchase Header"."No.");
                IF PurchCommntRec.FINDFIRST THEN
                    REPEAT
                        Comments[i] := FORMAT(PurchCommntRec.Comment);
                        // TermsAndCondn[j] := PurchCommntRec."Terms & Conditions";SKM
                        i += 1;
                        j += 1;
                    UNTIL PurchCommntRec.NEXT = 0;
                ContryRegnCodeRec.RESET;
                ContryRegnCodeRec.SETRANGE(Code, CompInfo."Country/Region Code");
                IF ContryRegnCodeRec.FINDFIRST THEN ContryRegnName := ContryRegnCodeRec.Name;
                ShipToaddressRec.RESET;
                ShipToaddressRec.SETRANGE(ShipToaddressRec.Code, "Purchase Header"."Ship-to Code");
                IF ShipToaddressRec.FINDFIRST THEN cntry.RESET;
                cntry.SETRANGE(cntry.Code, ShipToaddressRec."Country/Region Code");
                IF cntry.FINDFIRST THEN CntryDesc := cntry.Name;
                //>>RSPL - AR
                IF Loc.GET("Purchase Header"."Location Code") THEN;
                IF PaymentTerms.GET("Purchase Header"."Payment Terms Code") THEN;
                IF Curr.GET("Currency Code") THEN;
                CLEAR(INS);
                PurLine.RESET;
                PurLine.SETRANGE("Document No.", "Purchase Header"."No.");
                PurLine.SETRANGE(Type, PurLine.Type::"G/L Account");
                IF PurLine.FINDFIRST THEN
                    REPEAT
                        IF PurLine."No." = '40028000' THEN INS := PurLine.Amount;
                        QTY := PurLine.Quantity;
                    UNTIL PurLine.NEXT = 0;
                CLEAR(Packing);
                PurLine.RESET;
                PurLine.SETRANGE("Document No.", "Purchase Header"."No.");
                PurLine.SETRANGE(Type, PurLine.Type::"G/L Account");
                IF PurLine.FINDFIRST THEN
                    REPEAT
                        IF PurLine."No." = '40028001' THEN Packing := PurLine.Amount;
                        QTY := PurLine.Quantity;
                    UNTIL PurLine.NEXT = 0;
                //RSPL-RK-Start
                IF "Purchase Header"."Ship-to Code" <> '' THEN BEGIN
                    CountryReg_Rec.RESET;
                    CountryReg_Rec.SETRANGE(CountryReg_Rec.Code, "Purchase Header"."Ship-to Country/Region Code");
                    IF CountryReg_Rec.FINDFIRST THEN ShipToContReg := '';
                END
                ELSE BEGIN
                    ShipToContReg := CountryReg_Rec.Name;
                END;
                IF "Purchase Header"."Ship-to Code" = '' THEN BEGIN
                    ShipToName := '';
                    ShipToAdd := '';
                    ShipTpAdd2 := '';
                    ShipToContry := '';
                    ShipToPostCode := '';
                    ShipToCity := '';
                END
                ELSE BEGIN
                    ShipToName := "Purchase Header"."Ship-to Name" + '' + "Purchase Header"."Ship-to Name 2";
                    ShipToAdd := "Purchase Header"."Ship-to Address";
                    ShipTpAdd2 := "Purchase Header"."Ship-to Address 2";
                    ShipToContry := "Purchase Header"."Ship-to County";
                    ShipToPostCode := "Purchase Header"."Ship-to Post Code";
                    ShipToCity := "Purchase Header"."Ship-to City";
                END;
                //RSPL-RK-End
            end;
        }
    }
    requestpage
    {
        layout
        {
        }
        actions
        {
        }
    }
    labels
    {
    }
    trigger OnPreReport()
    begin
        CompInfo.GET;
        CompInfo.CALCFIELDS(Picture);
    end;

    var
        CompInfo: Record 79;
        Loc: Record 14;
        PaymentTerms: Record 3;
        Curr: Record 4;
        SrNo: Integer;
        NoOfPkg: Decimal;
        PurLine: Record 39;
        INS: Decimal;
        QTY: Decimal;
        Packing: Decimal;
        CustRec: Record 18;
        ShipToName: Text;
        ShipToAdd: Text;
        ShipTpAdd2: Text;
        ShipToContry: Text;
        ShipToPostCode: Text;
        ShipToCity: Text;
        ShipToContReg: Text;
        CountryReg_Rec: Record 9;
        VendorRec: Record 23;
        VendrContactName: Text[50];
        ShipmentMthdRec: Record 10;
        IncotrmsShipMtdDesc: Text[50];
        TransptMtdRec: Record 259;
        ShipmentModeDesc: Text[50];
        PurchCommntRec: Record 43;
        Comments: array[10] of Text[100];
        TermsAndCondn: array[10] of Text[100];
        i: Integer;
        j: Integer;
        ContryRegnCodeRec: Record 9;
        ContryRegnName: Text[50];
        ShipToaddressRec: Record 222;
        cntry: Record 9;
        CntryDesc: Text[50];
}
