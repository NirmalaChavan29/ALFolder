report 50104 "Request For Quote2"
{
    // S No     Ref No     UserID       Date           Trigger       Description
    // =================================================================================================
    // 1                   Pandiyan     09.04.13                     Report Added for Puchase Quote RFQ
    DefaultLayout = RDLC;
    RDLCLayout = './RequestForQuote.rdl';
    ApplicationArea = All;
    UsageCategory = Administration;


    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            DataItemTableView = SORTING("Document Type", "No.")
                                WHERE("Document Type" = CONST(RSPLRFQ));
            RequestFilterFields = "No.", "Buy-from Vendor No.", "No. Printed";
            column(CompInfoName; CompInfo.Name)
            {
            }
            column(IMRNo_PurchaseHeader; "Purchase Header"."IMR No.")
            {
            }
            column(CompInfoAddress; CompInfo.Address)
            {
            }
            column(CompInfoAddress2; CompInfo."Address 2")
            {
            }
            column(PRDate; PRDate)
            {
            }
            column(CompInfoCity; CompInfo.City)
            {
            }
            column(CompInfoPhoneNo; CompInfo."Phone No.")
            {
            }
            column(CompInfoFaxNo; CompInfo."Fax No.")
            {
            }
            column(CompInfoPicture; CompInfo.Picture)
            {
            }
            column(RequestedReceiptDate_PurchaseHeader; "Purchase Header"."Requested Receipt Date")
            {
            }
            column(CompInfoEMail; CompInfo."E-Mail")
            {
            }
            column(CompInfoVAT; CompInfo."VAT Registration No.")
            {
            }
            column(DocumentType_PurchaseHeader; "Purchase Header"."Document Type")
            {
            }
            column(BuyfromVendorNo_PurchaseHeader; "Purchase Header"."Buy-from Vendor No.")
            {
            }
            column(No_PurchaseHeader; "Purchase Header"."No.")
            {
            }
            column(Amount_PurchaseHeader; "Purchase Header".Amount)
            {
            }
            column(DocumentDate_PurchaseHeader; "Purchase Header"."Document Date")
            {
            }
            column(SelltoCustomerNo_PurchaseHeader; "Purchase Header"."Sell-to Customer No.")
            {
            }
            column(BuyfromVendorName_PurchaseHeader; "Purchase Header"."Buy-from Vendor Name")
            {
            }
            column(BuyfromVendorName2_PurchaseHeader; "Purchase Header"."Buy-from Vendor Name 2")
            {
            }
            column(BuyfromAddress_PurchaseHeader; "Purchase Header"."Buy-from Address")
            {
            }
            column(BuyfromAddress2_PurchaseHeader; "Purchase Header"."Buy-from Address 2")
            {
            }
            column(BuyfromCity_PurchaseHeader; "Purchase Header"."Buy-from City")
            {
            }
            column(BuyfromContact_PurchaseHeader; "Purchase Header"."Buy-from Contact")
            {
            }
            column(RequisitionType_PurchaseHeader; "Purchase Header"."Requisition Type")
            {
            }
            column(BuyfromPostCode_PurchaseHeader; "Purchase Header"."Buy-from Post Code")
            {
            }
            column(BuyfromCounty_PurchaseHeader; "Purchase Header"."Buy-from County")
            {
            }
            column(BuyfromCountryRegionCode_PurchaseHeader; "Purchase Header"."Buy-from Country/Region Code")
            {
            }
            column(Con_RequisitionNo_PurchaseHeader; "Purchase Header"."Attchment 2")
            {
            }
            column(PRNo; "Purchase Header"."Requisition No.")
            {
            }
            column(SalesContactPerson; CompInfo."Sales Contact Person")
            {
            }
            column(SaleContactGSM; CompInfo."Sales Contact Person GSM")
            {
            }
            column(SalesContactEmail; CompInfo."Sales Contact Person Email")
            {
            }
            column(VendorContact; VendorContact."No.")
            {
            }
            column(VendorContactPhone; VendorContact."Phone No.")
            {
            }
            column(VendorContactEmail; VendorContact."E-Mail")
            {
            }
            column(CreatedBy_PurchaseHeader; "Purchase Header"."Created By")
            {
            }
            dataitem("Purchase Line"; "Purchase Line")
            {
                DataItemLink = "Document Type" = FIELD("Document Type"),
                               "Document No." = FIELD("No.");
                DataItemTableView = SORTING("Document Type", "Document No.", "Line No.");
                column(sno; sno)
                {
                }
                column(No_PurchaseLine; "Purchase Line"."No.")
                {
                }
                column(Description_PurchaseLine; "Purchase Line".Description)
                {
                }
                column(Description2_PurchaseLine; "Purchase Line"."Description 2")
                {
                }
                column(UnitofMeasure_PurchaseLine; "Purchase Line"."Unit of Measure")
                {
                }
                column(Quantity_PurchaseLine; "Purchase Line".Quantity)
                {
                }
                column(PartNoOEMNumber_PurchaseLine; "Purchase Line"."Part No (OEM Number)")
                {
                }
                column(DirectUnitCost_PurchaseLine; "Purchase Line"."Direct Unit Cost")
                {
                }
                column(VAT_PurchaseLine; "Purchase Line"."VAT %")
                {
                }
                column(Amount_PurchaseLine; "Purchase Line"."Line Amount")
                {
                }
                column(GenuineorNonGenuine_PurchaseLine; "Purchase Line"."Genuine or Non Genuine")
                {
                }
                column(AmountIncludingVAT_PurchaseLine; "Purchase Line"."Amount Including VAT")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    sno := sno + 1;
                end;

                trigger OnPreDataItem()
                begin
                    sno := 0
                end;
            }

            dataitem(Integer; Integer)
            {
                column(Number_Integer; Integer.Number)
                {
                }

                trigger OnPreDataItem()
                begin
                    Integer.SETRANGE(Integer.Number, 1, 1 - "Purchase Line".COUNT);
                end;
            }

            trigger OnAfterGetRecord()
            begin
                CLEAR(PRNo);
                PurchaseIndent.RESET;
                PurchaseIndent.SETRANGE(PurchaseIndent."Document Type", PurchaseIndent."Document Type"::"Purchase Indent");
                PurchaseIndent.SETRANGE(PurchaseIndent."Requisition No", "Purchase Header"."Requisition No.");
                IF PurchaseIndent.FINDFIRST THEN BEGIN
                    PRNo := PurchaseIndent."Material request No.";
                    PRDate := PurchaseIndent."Requisition Date";
                END;
                //MESSAGE('%1',PRDate);

                IF Vendor_.GET("Purchase Header"."Buy-from Vendor No.") THEN;
                VendorContact.RESET;
                VendorContact.SETRANGE(VendorContact."No.", Vendor_."Primary Contact No.");
                IF VendorContact.FINDFIRST THEN;
            end;

            trigger OnPreDataItem()
            begin
                CompInfo.GET;
                CompInfo.CALCFIELDS(CompInfo.Picture);

                if glDocno <> '' then
                    SetRange("No.", glDocno);
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
    procedure SetDocNo(varDocNo: code[20])
    var
    begin
        glDocno := varDocNo;
    end;

    var
        glDocno: Code[20];
        CompInfo: Record 79;
        sno: Integer;
        PurchaseIndent: Record 50103;
        PRNo: Code[20];
        Vendor_: Record 23;
        VendorContact: Record 5050;
        PurchIndHdr: Record 50103;
        PRDate: Date;
}

