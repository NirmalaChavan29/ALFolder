page 60100 NewPostedSalesInvDocPage
{
    Caption = 'New Posted Sales Invoice';
    InsertAllowed = false;
    PageType = Document;
    RefreshOnActivate = true;
    SourceTable = "Sales Invoice Header";
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("Sell-to Customer No."; Rec."Sell-to Customer No.")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Customer No.';
                    Importance = Additional;
                    NotBlank = true;
                }
                field("Sell-to Customer Name"; Rec."Sell-to Customer Name")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Customer Name';
                    ShowMandatory = true;
                }
                group(Control114)
                {
                    ShowCaption = false;
                    Visible = false;
                    field("Quote No."; Rec."Quote No.")
                    {
                        ApplicationArea = All;
                        Visible = false;
                    }
                }
                group("Sell-to")
                {
                    Caption = 'Sell-to';
                    field("Sell-to Address"; Rec."Sell-to Address")
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Address';
                        Importance = Additional;
                        QuickEntry = false;
                    }
                    field("Sell-to Address 2"; Rec."Sell-to Address 2")
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Address 2';
                        Importance = Additional;
                        QuickEntry = false;
                    }
                    field("Sell-to City"; Rec."Sell-to City")
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'City';
                        Importance = Additional;
                    }
                    group(Control123)
                    {
                        ShowCaption = false;
                        field("Sell-to County"; Rec."Sell-to County")
                        {
                            ApplicationArea = Basic, Suite;
                            Caption = 'County';
                            Importance = Additional;
                        }
                    }
                    field("Sell-to Post Code"; Rec."Sell-to Post Code")
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Post Code';
                        Importance = Additional;
                        QuickEntry = false;

                    }
                    field("Sell-to Country/Region Code"; Rec."Sell-to Country/Region Code")
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Country/Region Code';
                        Importance = Additional;
                        QuickEntry = false;
                    }
                    field("Sell-to Contact No."; Rec."Sell-to Contact No.")
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Contact No.';
                        Importance = Additional;
                    }
                    field("Sell-to Phone No."; Rec."Sell-to Phone No.")
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Phone No.';
                        Importance = Additional;
                    }

                    field("Sell-to E-Mail"; Rec."Sell-to E-Mail")
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Email';
                        Importance = Additional;
                    }
                }
                field("Sell-to Contact"; Rec."Sell-to Contact")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Contact';
                }
                field("Document Date"; Rec."Document Date")
                {
                    ApplicationArea = Basic, Suite;
                    Importance = Additional;
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = Basic, Suite;
                    Importance = Promoted;
                }

                field("Order Date"; Rec."Order Date")
                {
                    ApplicationArea = Basic, Suite;
                    Importance = Promoted;
                    QuickEntry = false;
                }
                field("Due Date"; Rec."Due Date")
                {
                    ApplicationArea = Basic, Suite;
                    Importance = Promoted;
                }
                // field("Requested Delivery Date"; Rec."Requested Delivery Date")
                // {
                //     ApplicationArea = Basic, Suite;
                // }
                // field("Promised Delivery Date"; Rec."Promised Delivery Date")
                // {
                //     ApplicationArea = OrderPromising;
                //     Importance = Additional;
                // }
                field("External Document No."; Rec."External Document No.")
                {
                    ApplicationArea = Basic, Suite;
                    Importance = Promoted;
                }
                group("WorkDescription1")
                {
                    Caption = 'Work Description';
                    field(WorkDescription; WorkDescription)
                    {
                        ApplicationArea = Basic, Suite;
                        Importance = Additional;
                        MultiLine = true;
                        ShowCaption = false;
                    }
                }
            }
            group("Shipping and Billing")
            {
                Caption = 'Shipping and Billing';
                group(Control91)
                {
                    ShowCaption = false;
                    group(Control90)
                    {
                        ShowCaption = false;
                        field(ShippingOptions; ShipToOptions)
                        {
                            ApplicationArea = Basic, Suite;
                            Caption = 'Ship-to';
                        }
                        group(Control4)
                        {
                            ShowCaption = false;
                            Visible = NOT (ShipToOptions = ShipToOptions::"Default (Sell-to Address)");
                            field("Ship-to Code"; Rec."Ship-to Code")
                            {
                                ApplicationArea = Basic, Suite;
                                Caption = 'Code';
                                Editable = ShipToOptions = ShipToOptions::"Alternate Shipping Address";
                                Importance = Promoted;
                            }
                            field("Ship-to Name"; Rec."Ship-to Name")
                            {
                                ApplicationArea = Basic, Suite;
                                Caption = 'Name';
                                Editable = ShipToOptions = ShipToOptions::"Custom Address";
                            }
                            field("Ship-to Address"; Rec."Ship-to Address")
                            {
                                ApplicationArea = Basic, Suite;
                                Caption = 'Address';
                                Editable = ShipToOptions = ShipToOptions::"Custom Address";
                                QuickEntry = false;
                            }
                            field("Ship-to Address 2"; Rec."Ship-to Address 2")
                            {
                                ApplicationArea = Basic, Suite;
                                Caption = 'Address 2';
                                Editable = ShipToOptions = ShipToOptions::"Custom Address";
                                QuickEntry = false;

                            }
                            field("Ship-to City"; Rec."Ship-to City")
                            {
                                ApplicationArea = Basic, Suite;
                                Caption = 'City';
                                Editable = ShipToOptions = ShipToOptions::"Custom Address";
                                QuickEntry = false;

                            }
                            group(Control297)
                            {
                                ShowCaption = false;
                                field("Ship-to County"; Rec."Ship-to County")
                                {
                                    ApplicationArea = Basic, Suite;
                                    Caption = 'County';
                                    Editable = ShipToOptions = ShipToOptions::"Custom Address";
                                    QuickEntry = false;
                                    ToolTip = 'Specifies the state, province or county of the address.';
                                }
                            }
                            field("Ship-to Post Code"; Rec."Ship-to Post Code")
                            {
                                ApplicationArea = Basic, Suite;
                                Caption = 'Post Code';
                                Editable = ShipToOptions = ShipToOptions::"Custom Address";
                                QuickEntry = false;

                            }
                            field("Ship-to Country/Region Code"; Rec."Ship-to Country/Region Code")
                            {
                                ApplicationArea = Basic, Suite;
                                Caption = 'Country/Region';
                                Editable = ShipToOptions = ShipToOptions::"Custom Address";
                                Importance = Additional;
                                QuickEntry = false;
                                ToolTip = 'Specifies the customer''s country/region.';
                            }

                        }
                        field("Ship-to Contact"; Rec."Ship-to Contact")
                        {
                            ApplicationArea = Basic, Suite;
                            Caption = 'Contact';
                            ToolTip = 'Specifies the name of the contact person at the address that products on the sales document will be shipped to.';
                        }
                    }
                    group("Shipment Method")
                    {
                        Caption = 'Shipment Method';
                        field("Shipment Method Code"; Rec."Shipment Method Code")
                        {
                            ApplicationArea = Basic, Suite;
                            Caption = 'Code';
                            Importance = Additional;
                        }
                        field("Shipping Agent Code"; Rec."Shipping Agent Code")
                        {
                            ApplicationArea = Suite;
                            Caption = 'Agent';
                            Importance = Additional;
                        }
                        field("Package Tracking No."; Rec."Package Tracking No.")
                        {
                            ApplicationArea = Suite;
                            Importance = Additional;
                        }
                    }
                }
                group(Control85)
                {
                    ShowCaption = false;
                    field(BillToOptions; BillToOptions)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Bill-to';
                    }
                    group(Control82)
                    {
                        ShowCaption = false;
                        Visible = NOT (BillToOptions = BillToOptions::"Default (Customer)");
                        field("Bill-to Name"; Rec."Bill-to Name")
                        {
                            ApplicationArea = Basic, Suite;
                            Caption = 'Name';
                        }
                        field("Bill-to Address"; Rec."Bill-to Address")
                        {
                            ApplicationArea = Basic, Suite;
                            Caption = 'Address';

                        }
                        field("Bill-to Address 2"; Rec."Bill-to Address 2")
                        {
                            ApplicationArea = Basic, Suite;
                            Caption = 'Address 2';

                        }
                        field("Bill-to City"; Rec."Bill-to City")
                        {
                            ApplicationArea = Basic, Suite;
                            Caption = 'City';
                            Importance = Additional;
                        }
                        group(Control130)
                        {
                            ShowCaption = false;
                            field("Bill-to County"; Rec."Bill-to County")
                            {
                                ApplicationArea = Basic, Suite;
                                Caption = 'County';

                            }
                        }
                        field("Bill-to Post Code"; Rec."Bill-to Post Code")
                        {
                            ApplicationArea = Basic, Suite;
                            Caption = 'Post Code';

                        }
                        field("Bill-to Country/Region Code"; Rec."Bill-to Country/Region Code")
                        {
                            ApplicationArea = Basic, Suite;
                            Caption = 'Country/Region Code';

                        }
                        field("Bill-to Contact No."; Rec."Bill-to Contact No.")
                        {
                            ApplicationArea = Basic, Suite;
                            Caption = 'Contact No.';

                        }
                        field("Bill-to Contact"; Rec."Bill-to Contact")
                        {
                            ApplicationArea = Basic, Suite;
                            Caption = 'Contact';
                        }
                    }
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = Location;
                }
                field("Currency Code"; Rec."Currency Code")
                {
                    ApplicationArea = All;
                }
                field("Payment Terms Code"; Rec."Payment Terms Code")
                {
                    ApplicationArea = All;
                }
                field("Payment Method Code"; Rec."Payment Method Code")
                {
                    ApplicationArea = All;
                }
                field("Applies-to Doc. Type"; Rec."Applies-to Doc. Type")
                {
                    ApplicationArea = All;
                }
                field("Applies-to Doc. No."; Rec."Applies-to Doc. No.")
                {
                    ApplicationArea = All;
                }
                // field("Applies-to ID"; Rec."Applies-to ID")
                // {
                //     ApplicationArea = All;
                // }

            }
            //
            part(Lines; NewPostedSalesInvSubform)
            {
                ApplicationArea = Basic, Suite;
                SubPageLink = "Document No." = FIELD("No.");
            }
        }

    }


    actions
    {
        area(navigation)
        {
            group("&Invoice")
            {
                Caption = '&Invoice';
                Image = Invoice;
                action(Statistics)
                {
                    ApplicationArea = Suite;
                    Caption = 'Statistics';
                    Image = Statistics;
                    ShortCutKey = 'F7';
                    ToolTip = 'View statistical information, such as the value of posted entries, for the record.';

                    trigger OnAction()
                    begin
                        OnBeforeCalculateSalesTaxStatistics(Rec);
                        if Rec."Tax Area Code" = '' then
                            PAGE.RunModal(PAGE::"Sales Invoice Statistics", Rec, Rec."No.")
                        // else
                        //PAGE.RunModal(PAGE::"Sales Invoice Stats.", Rec, Rec."No.");
                    end;
                }
                action("Co&mments")
                {
                    ApplicationArea = Comments;
                    Caption = 'Co&mments';
                    Image = ViewComments;
                    RunObject = Page "Sales Comment Sheet";
                    RunPageLink = "Document Type" = CONST("Posted Invoice"),
                                  "No." = FIELD("No."),
                                  "Document Line No." = CONST(0);
                    ToolTip = 'View or add comments for the record.';
                }
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
                action(Approvals)
                {
                    AccessByPermission = TableData "Posted Approval Entry" = R;
                    ApplicationArea = Suite;
                    Caption = 'Approvals';
                    Image = Approvals;
                    ToolTip = 'View a list of the records that are waiting to be approved. For example, you can see who requested the record to be approved, when it was sent, and when it is due to be approved.';

                    trigger OnAction()
                    var
                        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
                    begin
                        ApprovalsMgmt.ShowPostedApprovalEntries(Rec.RecordId);
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
                separator(Action171)
                {
                }
                action(ChangePaymentService)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Change Payment Service';
                    Image = ElectronicPayment;
                    ToolTip = 'Change or add the payment service, such as PayPal Standard, that will be included on the sales document so the customer can quickly access the payment site.';
                    Visible = PaymentServiceVisible;

                    trigger OnAction()
                    var
                        PaymentServiceSetup: Record "Payment Service Setup";
                    begin
                        PaymentServiceSetup.ChangePaymentServicePostedInvoice(Rec);
                    end;
                }
            }
            group(ActionGroupCRM)
            {
                Caption = 'Dynamics 365 Sales';
                Visible = CRMIntegrationEnabled;
                action(CRMGotoInvoice)
                {
                    ApplicationArea = Suite;
                    Caption = 'Invoice';
                    Enabled = CRMIsCoupledToRecord;
                    Image = CoupledSalesInvoice;
                    ToolTip = 'Open the coupled Dynamics 365 Sales invoice.';

                    trigger OnAction()
                    var
                        CRMIntegrationManagement: Codeunit "CRM Integration Management";
                    begin
                        CRMIntegrationManagement.ShowCRMEntityFromRecordID(Rec.RecordId);
                    end;
                }
                action(CreateInCRM)
                {
                    ApplicationArea = Suite;
                    Caption = 'Create Invoice in Dynamics 365 Sales';
                    Enabled = NOT CRMIsCoupledToRecord;
                    Image = NewSalesInvoice;
                    ToolTip = 'Create a sales invoice in Dynamics 365 Sales that is connected to this posted sales invoice.';

                    trigger OnAction()
                    var
                        CRMIntegrationManagement: Codeunit "CRM Integration Management";
                    begin
                        CRMIntegrationManagement.CreateNewRecordsInCRM(Rec.RecordId);
                    end;
                }
                action(ShowLog)
                {
                    ApplicationArea = Suite;
                    Caption = 'Synchronization Log';
                    Image = Log;
                    ToolTip = 'View integration synchronization jobs for the posted sales invoice table.';

                    trigger OnAction()
                    var
                        CRMIntegrationManagement: Codeunit "CRM Integration Management";
                    begin
                        CRMIntegrationManagement.ShowLog(Rec.RecordId);
                    end;
                }
            }
        }
        area(processing)
        {
            group("F&unctions")
            {
                Caption = 'F&unctions';
                Image = "Action";
                action("&Track Package")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = '&Track Package';
                    Image = ItemTracking;
                    ToolTip = 'Open the shipping agent''s tracking page to track the package. ';

                    trigger OnAction()
                    begin
                        Rec.StartTrackingSite();
                    end;
                }
            }
            group("&Electronic Document")
            {
                Caption = '&Electronic Document';
                // action("S&end")
                // {
                //     ApplicationArea = BasicMX;
                //     Caption = 'S&end';
                //     Ellipsis = true;
                //     Image = SendTo;
                //     ToolTip = 'Send an email to the customer with the electronic invoice attached as an XML file.';

                //     trigger OnAction()
                //     begin
                //         Rec.RequestStampEDocument();
                //     end;
                // }
                // action("Export E-Document as &XML")
                // {
                //     ApplicationArea = BasicMX;
                //     Caption = 'Export E-Document as &XML';
                //     Image = ExportElectronicDocument;
                //     ToolTip = 'Export the posted sales invoice as an electronic invoice, and XML file, and save it to a specified location.';

                //     trigger OnAction()
                //     begin
                //         FeatureTelemetry.LogUptake('1000HR9', MXInvoiceTok, Enum::"Feature Uptake Status"::"Used");
                //         Rec.ExportEDocument();
                //         FeatureTelemetry.LogUsage('1000HS0', MXInvoiceTok, 'MX Electronic Invoice Exported as E-Documents and as XML Files');
                //     end;
                // }
                // action(ExportEDocumentPDF)
                // {
                //     ApplicationArea = BasicMX;
                //     Caption = 'Export E-Document as PDF';
                //     Image = ExportToBank;
                //     ToolTip = 'Export the posted sales invoice as an electronic invoice, a PDF document, when the stamp is received.';

                //     trigger OnAction()
                //     begin
                //         FeatureTelemetry.LogUptake('1000HR8', MXInvoiceTok, Enum::"Feature Uptake Status"::"Used");
                //         Rec.ExportEDocumentPDF();
                //         FeatureTelemetry.LogUsage('1000HS5', MXInvoiceTok, 'MX Electronic Invoice Exported as PDFs');
                //     end;
                // }
                // action("CFDI Information")
                // {
                //     ApplicationArea = Basic, Suite;
                //     Caption = 'CFDI Information';
                //     ToolTip = 'View the CFDI information for reversed advance payments.';

                //     trigger OnAction()
                //     var
                //         CFDIDocuments: Record "CFDI Documents";
                //     begin
                //         if CFDIDocuments.Get(Rec."No.", DATABASE::"Sales Invoice Header", true, true) then
                //             PAGE.Run(PAGE::"SAT CFDI Document Information", CFDIDocuments);
                //     end;
                // }
                // action(CFDIRelationDocuments)
                // {
                //     ApplicationArea = BasicMX;
                //     Caption = 'CFDI Relation Documents';
                //     Image = Allocations;
                //     RunObject = Page "CFDI Relation Documents";
                //     RunPageLink = "Document Table ID" = CONST(112),
                //                   "Document No." = FIELD("No."),
                //                   "Customer No." = FIELD("Bill-to Customer No.");
                //     RunPageMode = View;
                //     ToolTip = 'View or add CFDI relation documents for the record.';
                // }
                //     action("&Cancel")
                //     {
                //         ApplicationArea = BasicMX;
                //         Caption = '&Cancel';
                //         Image = Cancel;
                //         ToolTip = 'Cancel the sending of the electronic sales invoice.';

                //         trigger OnAction()
                //         begin
                //             Rec.CancelEDocument();
                //         end;
                //     }
            }
            action(SendCustom)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Send';
                Ellipsis = true;
                Image = SendToMultiple;
                ToolTip = 'Prepare to send the document according to the customer''s sending profile, such as attached to an email. The Send document to window opens first so you can confirm or select a sending profile.';

                trigger OnAction()
                var
                    SalesInvHeader: Record "Sales Invoice Header";
                begin
                    SalesInvHeader := Rec;
                    CurrPage.SetSelectionFilter(SalesInvHeader);
                    SalesInvHeader.SendRecords();
                end;
            }
            action(Print)
            {
                ApplicationArea = Basic, Suite;
                Caption = '&Print';
                Ellipsis = true;
                Image = Print;
                ToolTip = 'Prepare to print the document. A report request window for the document opens where you can specify what to include on the print-out.';
                Visible = NOT IsOfficeAddin;

                trigger OnAction()
                var
                    IsHandled: Boolean;
                begin
                    SalesInvHeader := Rec;
                    CurrPage.SetSelectionFilter(SalesInvHeader);
                    IsHandled := false;
                    OnBeforeSalesInvHeaderPrintRecords(SalesInvHeader, IsHandled);
                    if not IsHandled then
                        SalesInvHeader.PrintRecords(true);
                end;
            }
            action(Email)
            {
                ApplicationArea = Basic, Suite;
                Caption = '&Email';
                Image = Email;
                ToolTip = 'Prepare to email the document. The Send Email window opens prefilled with the customer''s email address so you can add or edit information.';

                trigger OnAction()
                begin
                    SalesInvHeader := Rec;
                    CurrPage.SetSelectionFilter(SalesInvHeader);
                    SalesInvHeader.EmailRecords(true);
                end;
            }
            action(AttachAsPDF)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Attach as PDF';
                Image = PrintAttachment;
                ToolTip = 'Create a PDF file and attach it to the document.';

                trigger OnAction()
                var
                    SalesInvoiceHeader: Record "Sales Invoice Header";
                begin
                    SalesInvoiceHeader := Rec;
                    SalesInvoiceHeader.SetRecFilter();
                    Rec.PrintToDocumentAttachment(SalesInvoiceHeader);
                end;
            }
            action("&Navigate")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Find entries...';
                Image = Navigate;
                ShortCutKey = 'Ctrl+Alt+Q';
                AboutTitle = 'Get detailed posting details';
                AboutText = 'Here, you can look up the ledger entries that were created when this invoice was posted, as well as any related documents.';
                ToolTip = 'Find entries and documents that exist for the document number and posting date on the selected document. (Formerly this action was named Navigate.)';
                Visible = NOT IsOfficeAddin;

                trigger OnAction()
                begin
                    Rec.Navigate();
                end;
            }
            action(ActivityLog)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Activity Log';
                Image = Log;
                ToolTip = 'View the status and any errors if the document was sent as an electronic document or OCR file through the document exchange service.';

                trigger OnAction()
                begin
                    Rec.ShowActivityLog();
                end;
            }
            action("Update Document")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Update Document';
                Image = Edit;
                ToolTip = 'Add new information that is relevant to the document, such as a payment reference. You can only edit a few fields because the document has already been posted.';

                trigger OnAction()
                var
                    PostedSalesInvUpdate: Page "Posted Sales Inv. - Update";
                begin
                    PostedSalesInvUpdate.LookupMode := true;
                    PostedSalesInvUpdate.SetRec(Rec);
                    PostedSalesInvUpdate.RunModal();
                end;
            }
            group(IncomingDocument)
            {
                Caption = 'Incoming Document';
                Image = Documents;
                action(IncomingDocCard)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'View Incoming Document';
                    Enabled = HasIncomingDocument;
                    Image = ViewOrder;
                    ToolTip = 'View any incoming document records and file attachments that exist for the entry or document.';

                    trigger OnAction()
                    var
                        IncomingDocument: Record "Incoming Document";
                    begin
                        IncomingDocument.ShowCard(Rec."No.", Rec."Posting Date");
                    end;
                }
                action(SelectIncomingDoc)
                {
                    AccessByPermission = TableData "Incoming Document" = R;
                    ApplicationArea = Basic, Suite;
                    Caption = 'Select Incoming Document';
                    Enabled = NOT HasIncomingDocument;
                    Image = SelectLineToApply;
                    ToolTip = 'Select an incoming document record and file attachment that you want to link to the entry or document.';

                    trigger OnAction()
                    var
                        IncomingDocument: Record "Incoming Document";
                    begin
                        IncomingDocument.SelectIncomingDocumentForPostedDocument(Rec."No.", Rec."Posting Date", Rec.RecordId);
                    end;
                }
                action(IncomingDocAttachFile)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Create Incoming Document from File';
                    Ellipsis = true;
                    Enabled = NOT HasIncomingDocument;
                    Image = Attach;
                    ToolTip = 'Create an incoming document record by selecting a file to attach, and then link the incoming document record to the entry or document.';

                    trigger OnAction()
                    var
                        IncomingDocumentAttachment: Record "Incoming Document Attachment";
                    begin
                        IncomingDocumentAttachment.NewAttachmentFromPostedDocument(Rec."No.", Rec."Posting Date");
                    end;
                }
            }
            group(Correct)
            {
                Caption = 'Correct';
                action(CorrectInvoice)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Correct';
                    Image = Undo;
                    AboutTitle = 'Correct an invoice';
                    Visible = not Rec.Cancelled;

                    trigger OnAction()
                    var
                        CorrectPstdSalesInvYesNo: Codeunit "Correct PstdSalesInv (Yes/No)";
                    begin
                        if CorrectPstdSalesInvYesNo.CorrectInvoice(Rec) then
                            CurrPage.Close();
                    end;
                }
                action(CancelInvoice)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Cancel';
                    Image = Cancel;
                    ToolTip = 'Create and post a sales credit memo that reverses this posted sales invoice. This posted sales invoice will be canceled.';
                    Visible = not Rec.Cancelled;

                    trigger OnAction()
                    var
                        CancelPstdSalesInvYesNo: Codeunit "Cancel PstdSalesInv (Yes/No)";
                    begin
                        if CancelPstdSalesInvYesNo.CancelInvoice(Rec) then
                            CurrPage.Close();
                    end;
                }
                action(CreateCreditMemo)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Create Corrective Credit Memo';
                    Image = CreateCreditMemo;
                    ToolTip = 'Create a credit memo for this posted invoice that you complete and post manually to reverse the posted invoice.';

                    trigger OnAction()
                    var
                        SalesHeader: Record "Sales Header";
                        CorrectPostedSalesInvoice: Codeunit "Correct Posted Sales Invoice";
                        IsHandled: Boolean;
                    begin
                        IsHandled := false;
                        OnBeforeCreateCreditMemoOnAction(Rec, IsHandled);
                        if IsHandled then
                            exit;

                        if CorrectPostedSalesInvoice.CreateCreditMemoCopyDocument(Rec, SalesHeader) then begin
                            PAGE.Run(PAGE::"Sales Credit Memo", SalesHeader);
                            CurrPage.Close();
                        end;
                    end;
                }
                action(ShowCreditMemo)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Show Canceled/Corrective Credit Memo';
                    Image = CreditMemo;
                    ToolTip = 'Open the posted sales credit memo that was created when you canceled the posted sales invoice. If the posted sales invoice is the result of a canceled sales credit memo, then the canceled sales credit memo will open.';
                    Visible = Rec.Cancelled OR Rec.Corrective;

                    trigger OnAction()
                    begin
                        Rec.ShowCanceledOrCorrCrMemo();
                    end;
                }
            }
            group(Invoice)
            {
                Caption = 'Invoice';
                Image = Invoice;
                action(Customer)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Customer';
                    Image = Customer;
                    RunObject = Page "Customer Card";
                    RunPageLink = "No." = FIELD("Sell-to Customer No.");
                    ShortCutKey = 'Shift+F7';
                    ToolTip = 'View or edit detailed information about the customer.';
                }
            }
        }
        area(Promoted)
        {
            group(Category_Process)
            {
                Caption = 'Process', Comment = 'Generated from the PromotedActionCategories property index 1.';

                actionref("Update Document_Promoted"; "Update Document")
                {
                }
                group(Category_Category5)
                {
                    Caption = 'Correct', Comment = 'Generated from the PromotedActionCategories property index 4.';
                    ShowAs = SplitButton;

                    actionref(CorrectInvoice_Promoted; CorrectInvoice)
                    {
                    }
                    actionref(CancelInvoice_Promoted; CancelInvoice)
                    {
                    }
                    actionref(CreateCreditMemo_Promoted; CreateCreditMemo)
                    {
                    }
                    actionref(ShowCreditMemo_Promoted; ShowCreditMemo)
                    {
                    }
                }
                actionref("&Navigate_Promoted"; "&Navigate")
                {
                }
                actionref("&Track Package_Promoted"; "&Track Package")
                {
                }
                actionref(ChangePaymentService_Promoted; ChangePaymentService)
                {
                }
            }
            group(Category_Category6)
            {
                Caption = 'Print/Send', Comment = 'Generated from the PromotedActionCategories property index 5.';

                actionref(Print_Promoted; Print)
                {
                }
                actionref(Email_Promoted; Email)
                {
                }
                actionref(AttachAsPDF_Promoted; AttachAsPDF)
                {
                }
                actionref(SendCustom_Promoted; SendCustom)
                {
                }
            }
            group(Category_Category4)
            {
                Caption = 'Invoice', Comment = 'Generated from the PromotedActionCategories property index 3.';

                actionref(Dimensions_Promoted; Dimensions)
                {
                }
                actionref(Statistics_Promoted; Statistics)
                {
                }
                actionref("Co&mments_Promoted"; "Co&mments")
                {
                }
                actionref(DocAttach_Promoted; DocAttach)
                {
                }
                actionref(Approvals_Promoted; Approvals)
                {
                }
                actionref(ActivityLog_Promoted; ActivityLog)
                {
                }
                separator(Navigate_Separator)
                {
                }
                actionref(Customer_Promoted; Customer)
                {
                }
            }
            group("Category_Incoming Document")
            {
                Caption = 'Incoming Document';

                actionref(SelectIncomingDoc_Promoted; SelectIncomingDoc)
                {
                }
                actionref(IncomingDocAttachFile_Promoted; IncomingDocAttachFile)
                {
                }
                actionref(IncomingDocCard_Promoted; IncomingDocCard)
                {
                }
            }
            group(Category_Category7)
            {
                Caption = 'Navigate', Comment = 'Generated from the PromotedActionCategories property index 6.';
            }
            group(Category_Category8)
            {
                Caption = 'Electronic Document', Comment = 'Generated from the PromotedActionCategories property index 7.';

                // actionref("S&end_Promoted"; "S&end")
                // {
                // }
                // actionref("Export E-Document as &XML_Promoted"; "Export E-Document as &XML")
                // {
                // }
                // actionref(ExportEDocumentPDF_Promoted; ExportEDocumentPDF)
                // {
                // }
                // actionref("CFDI Information_Promoted"; "CFDI Information")
                // {
                // }
                // actionref(CFDIRelationDocuments_Promoted; CFDIRelationDocuments)
                // {
                // }
                // actionref("&Cancel_Promoted"; "&Cancel")
                // {
                // }
            }
            group(Category_Report)
            {
                Caption = 'Report', Comment = 'Generated from the PromotedActionCategories property index 2.';
            }
            group(Category_Synchronize)
            {
                Caption = 'Synchronize';
                Visible = CRMIntegrationEnabled;

                actionref(CreateInCRM_Promoted; CreateInCRM)
                {
                }
                actionref(CRMGotoInvoice_Promoted; CRMGotoInvoice)
                {
                }
                actionref(ShowLog_Promoted; ShowLog)
                {
                }
            }
        }
    }


    trigger OnAfterGetRecord()
    begin
        DocExchStatusStyle := Rec.GetDocExchStatusStyle();
        SellToContact.GetOrClear(Rec."Sell-to Contact No.");
        BillToContact.GetOrClear(Rec."Bill-to Contact No.");
    end;

    trigger OnInit()
    begin
        DocExcStatusVisible := true;
    end;

    trigger OnOpenPage()
    var
        PaymentServiceSetup: Record "Payment Service Setup";
        OfficeMgt: Codeunit "Office Management";
        VATReportingDateMgt: Codeunit "VAT Reporting Date Mgt";
    begin
        Rec.SetSecurityFilterOnRespCenter();
        CRMIntegrationEnabled := CRMIntegrationManagement.IsCRMIntegrationEnabled();

        IsOfficeAddin := OfficeMgt.IsAvailable();

        ActivateFields();
        PaymentServiceVisible := PaymentServiceSetup.IsPaymentServiceVisible();
        VATDateEnabled := VATReportingDateMgt.IsVATDateEnabled();
    end;

    var
        SellToContact: Record Contact;
        BillToContact: Record Contact;
        CRMIntegrationManagement: Codeunit "CRM Integration Management";
        FeatureTelemetry: Codeunit "Feature Telemetry";
        FormatAddress: Codeunit "Format Address";
        ChangeExchangeRate: Page "Change Exchange Rate";
        HasIncomingDocument: Boolean;
        DocExchStatusStyle: Text;
        MXInvoiceTok: Label 'MX Electronic Invoice', Locked = true;
        CRMIntegrationEnabled: Boolean;
        CRMIsCoupledToRecord: Boolean;
        PaymentServiceVisible: Boolean;
        PaymentServiceEnabled: Boolean;
        DocExcStatusVisible: Boolean;
        IsBillToCountyVisible: Boolean;
        IsSellToCountyVisible: Boolean;
        IsShipToCountyVisible: Boolean;
        [InDataSet]
        VATDateEnabled: Boolean;

    protected var
        SalesInvHeader: Record "Sales Invoice Header";
        IsOfficeAddin: Boolean;

    local procedure ActivateFields()
    begin
        IsBillToCountyVisible := FormatAddress.UseCounty(Rec."Bill-to Country/Region Code");
        IsSellToCountyVisible := FormatAddress.UseCounty(Rec."Sell-to Country/Region Code");
        IsShipToCountyVisible := FormatAddress.UseCounty(Rec."Ship-to Country/Region Code");
    end;

    local procedure UpdatePaymentService()
    var
        PaymentServiceSetup: Record "Payment Service Setup";
    begin
        PaymentServiceEnabled := PaymentServiceSetup.CanChangePaymentService(Rec);
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeSalesInvHeaderPrintRecords(var SalesInvHeader: Record "Sales Invoice Header"; var IsHandled: Boolean)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeCalculateSalesTaxStatistics(var SalesInvoiceHeader: Record "Sales Invoice Header")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeCreateCreditMemoOnAction(var SalesInvoiceHeader: Record "Sales Invoice Header"; var IsHandled: Boolean)
    begin
    end;

    var
        ShipToOptions: Enum "Sales Ship-to Options";
        BillToOptions: Enum "Sales Bill-to Options";
        WorkDescription: Text;
}