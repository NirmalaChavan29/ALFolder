page 60105 NewPostedSalesInvSubform
{
    AutoSplitKey = true;
    Caption = 'Lines';
    Editable = false;
    LinksAllowed = false;
    PageType = ListPart;
    SourceTable = "Sales Invoice Line";
    layout
    {
        area(Content)
        {
            repeater(Lines)
            {
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field("Description 2"; Rec."Description 2")
                {
                    ApplicationArea = All;
                }
                field(Description3; Rec.Description3)
                {
                    ApplicationArea = All;
                }
                field(Description4; Rec.Description4)
                {
                    ApplicationArea = All;
                }
                field(ItemGroup; Rec.ItemGroup)
                {
                    ApplicationArea = All;
                }
                field(Barcode; Rec.Barcode)
                {
                    ApplicationArea = All;
                }
                field(Warranty; Rec.Warranty)
                {
                    ApplicationArea = All;
                }
                field(Brand; Rec.Brand)
                {
                    ApplicationArea = All;
                }
                field("SKU (Manufacturing Code)"; Rec."SKU (Manufacturing Code)")
                {
                    ApplicationArea = All;
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                }
                field("Unit of Measure"; Rec."Unit of Measure")
                {
                    ApplicationArea = All;
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    ApplicationArea = All;
                }
                field("Line Discount %"; Rec."Line Discount %")
                {
                    ApplicationArea = All;

                }
                field("Line Amount"; Rec."Line Amount")
                {
                    ApplicationArea = All;
                }
                // field("Qty. to Ship"; Rec."Qty. to Ship")
                // {
                //     ApplicationArea = All;
                // }
                // field("Quantity Shipped"; Rec."Quantity Shipped")
                // {
                //     ApplicationArea = All;
                // }
                // field("Qty. to Invoice"; Rec."Qty. to Invoice")
                // {
                //     ApplicationArea = All;
                // }
                // field("Quantity Invoiced"; Rec."Quantity Invoiced")
                // {
                //     ApplicationArea = All;
                // }
            }
        }

    }

    actions
    {
        area(processing)
        {
            group("&Line")
            {
                Caption = '&Line';
                Image = Line;
                action(Dimensions)
                {
                    AccessByPermission = TableData Dimension = R;
                    ApplicationArea = Dimensions;
                    Caption = 'Dimensions';
                    Image = Dimensions;
                    ShortCutKey = 'Alt+D';
                    ToolTip = 'View or edit dimensions, such as area, project, or department, that you can assign to sales and purchase documents to distribute costs and analyze transaction history.';

                    trigger OnAction()
                    begin
                        Rec.ShowDimensions();
                    end;
                }
                action(Comments)
                {
                    ApplicationArea = Comments;
                    Caption = 'Co&mments';
                    Image = ViewComments;
                    ToolTip = 'View or add comments for the record.';

                    trigger OnAction()
                    begin
                        Rec.ShowLineComments();
                    end;
                }
                action(ItemTrackingEntries)
                {
                    ApplicationArea = ItemTracking;
                    Caption = 'Item &Tracking Entries';
                    Image = ItemTrackingLedger;
                    ToolTip = 'View serial or lot numbers that are assigned to items.';

                    trigger OnAction()
                    begin
                        Rec.ShowItemTrackingLines();
                    end;
                }
                action(ItemShipmentLines)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Item Shipment &Lines';
                    Image = ShipmentLines;
                    ToolTip = 'View posted sales shipments for the item.';

                    trigger OnAction()
                    begin
                        if not (Rec.Type in [Rec.Type::Item, Rec.Type::"Charge (Item)"]) then
                            Rec.TestField(Type);
                        Rec.ShowItemShipmentLines();
                    end;
                }
                action(DocumentLineTracking)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Document &Line Tracking';
                    Image = Navigate;
                    ToolTip = 'View related open, posted, or archived documents or document lines.';

                    trigger OnAction()
                    begin
                        ShowDocumentLineTracking();
                    end;
                }
                action(DeferralSchedule)
                {
                    ApplicationArea = Suite;
                    Caption = 'Deferral Schedule';
                    Enabled = Rec."Deferral Code" <> '';
                    Image = PaymentPeriod;
                    ToolTip = 'View the deferral schedule that governs how revenue made with this sales document was deferred to different accounting periods when the document was posted.';

                    trigger OnAction()
                    begin
                        Rec.ShowDeferrals();
                    end;
                }
                action(DocAttach)
                {
                    ApplicationArea = All;
                    Caption = 'Attachments';
                    Image = Attach;
                    ToolTip = 'Add a file as an attachment. You can attach images as well as documents.';

                    trigger OnAction()
                    var
                        DocumentAttachmentDetails: Page "Document Attachment Details";
                        RecRef: RecordRef;
                    begin
                        RecRef.GetTable(Rec);
                        DocumentAttachmentDetails.OpenForRecRef(RecRef);
                        DocumentAttachmentDetails.RunModal();
                    end;
                }
            }
        }
    }

    trigger OnAfterGetCurrRecord()
    begin
        DocumentTotals.CalculatePostedSalesInvoiceTotals(TotalSalesInvoiceHeader, VATAmount, Rec);
    end;

    trigger OnAfterGetRecord()
    begin
        Rec.ShowShortcutDimCode(ShortcutDimCode);
    end;

    trigger OnInit()
    var
        ApplicationAreaMgmtFacade: Codeunit "Application Area Mgmt. Facade";
    begin
        IsFoundation := ApplicationAreaMgmtFacade.IsFoundationEnabled();
    end;

    trigger OnOpenPage()
    begin
        SetDimensionsVisibility();
    end;

    var
        DocumentTotals: Codeunit "Document Totals";
        VATAmount: Decimal;
        IsFoundation: Boolean;

    protected var
        TotalSalesInvoiceHeader: Record "Sales Invoice Header";
        ShortcutDimCode: array[8] of Code[20];
        DimVisible1: Boolean;
        DimVisible2: Boolean;
        DimVisible3: Boolean;
        DimVisible4: Boolean;
        DimVisible5: Boolean;
        DimVisible6: Boolean;
        DimVisible7: Boolean;
        DimVisible8: Boolean;

    procedure ShowDocumentLineTracking()
    var
        DocumentLineTracking: Page "Document Line Tracking";
    begin
        Clear(DocumentLineTracking);
        DocumentLineTracking.SetDoc(
          6, Rec."Document No.", Rec."Line No.", Rec."Blanket Order No.", Rec."Blanket Order Line No.", Rec."Order No.", Rec."Order Line No.");
        DocumentLineTracking.RunModal();
    end;

    local procedure SetDimensionsVisibility()
    var
        DimMgt: Codeunit DimensionManagement;
    begin
        DimVisible1 := false;
        DimVisible2 := false;
        DimVisible3 := false;
        DimVisible4 := false;
        DimVisible5 := false;
        DimVisible6 := false;
        DimVisible7 := false;
        DimVisible8 := false;

        DimMgt.UseShortcutDims(
          DimVisible1, DimVisible2, DimVisible3, DimVisible4, DimVisible5, DimVisible6, DimVisible7, DimVisible8);

        Clear(DimMgt);

        OnAfterSetDimensionsVisibility();
    end;

    [IntegrationEvent(true, false)]
    local procedure OnAfterSetDimensionsVisibility()
    begin
    end;
}