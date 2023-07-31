page 60104 NewPostedSalesOrderListPage
{
    ApplicationArea = Basic, Suite;
    Caption = 'New Posted Sales Invoices';
    CardPageID = NewPostedSalesInvDocPage;
    Editable = false;
    PageType = List;
    SourceTable = "Sales Invoice Header";
    SourceTableView = SORTING("Posting Date")
                      ORDER(Descending);
    UsageCategory = History;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;

                }
                field("Sell-to Customer No."; Rec."Sell-to Customer No.")
                {
                    ApplicationArea = All;
                }
                field("Sell-to Customer Name"; Rec."Sell-to Customer Name")
                {
                    ApplicationArea = All;
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;
                }
                field("Document Date"; Rec."Document Date")
                {
                    ApplicationArea = All;
                }
                // field("Completely Shipped"; Rec."Completely Shipped")
                // {
                //     ApplicationArea = All;
                // }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                }
                field("Amount Including VAT"; Rec."Amount Including VAT")
                {
                    ApplicationArea = All;
                }
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
                    AboutTitle = 'Your profit from a sale';
                    AboutText = 'Go here to see statistics about the selected invoice, your profit, and associated taxes.';
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
                                  "No." = FIELD("No.");
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
                action(IncomingDoc)
                {
                    AccessByPermission = TableData "Incoming Document" = R;
                    ApplicationArea = Basic, Suite;
                    Caption = 'Incoming Document';
                    Image = Document;
                    ToolTip = 'View or create an incoming document record that is linked to the entry or document.';

                    trigger OnAction()
                    var
                        IncomingDocument: Record "Incoming Document";
                    begin
                        IncomingDocument.ShowCard(Rec."No.", Rec."Posting Date");
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
                    ToolTip = 'Generate the document in the coupled Dynamics 365 Sales account.';

                    trigger OnAction()
                    var
                        SalesInvoiceHeader: Record "Sales Invoice Header";
                        CRMIntegrationManagement: Codeunit "CRM Integration Management";
                    begin
                        CurrPage.SetSelectionFilter(SalesInvoiceHeader);
                        CRMIntegrationManagement.CreateNewRecordsInCRM(SalesInvoiceHeader);
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
                //     var
                //         SalesInvoiceHeader: Record "Sales Invoice Header";
                //         ProgressWindow: Dialog;
                //     begin
                //         CurrPage.SetSelectionFilter(SalesInvoiceHeader);
                //         ProgressWindow.Open(ProcessingInvoiceMsg);
                //         if SalesInvoiceHeader.FindSet() then begin
                //             repeat
                //                 SalesInvoiceHeader.RequestStampEDocument();
                //                 ProgressWindow.Update(1, SalesInvoiceHeader."No.");
                //             until SalesInvoiceHeader.Next() = 0;
                //         end;
                //         ProgressWindow.Close();
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
                //         Rec.ExportEDocument();
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
                //         Rec.ExportEDocumentPDF();
                //     end;
                // }
                // action("&Cancel")
                // {
                //     ApplicationArea = BasicMX;
                //     Caption = '&Cancel';
                //     Image = Cancel;
                //     ToolTip = 'Cancel the sending of the electronic sales invoice.';

                //     trigger OnAction()
                //     var
                //         SalesInvoiceHeader: Record "Sales Invoice Header";
                //         ProgressWindow: Dialog;
                //     begin
                //         CurrPage.SetSelectionFilter(SalesInvoiceHeader);
                //         ProgressWindow.Open(ProcessingInvoiceMsg);
                //         if SalesInvoiceHeader.FindSet() then begin
                //             repeat
                //                 SalesInvoiceHeader.CancelEDocument();
                //                 ProgressWindow.Update(1, SalesInvoiceHeader."No.");
                //             until SalesInvoiceHeader.Next() = 0;
                //         end;
                //         ProgressWindow.Close();
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
                //     ApplicationArea = BasicMX, Suite;
                //     Caption = 'CFDI Relation Documents';
                //     Image = Allocations;
                //     RunObject = Page "CFDI Relation Documents";
                //     RunPageLink = "Document Table ID" = CONST(112),
                //                   "Document No." = FIELD("No."),
                //                   "Customer No." = FIELD("Bill-to Customer No.");
                //     RunPageMode = View;
                //     ToolTip = 'View or add CFDI relation documents for the record.';
                // }
            }
            action(SendCustom)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Send';
                Ellipsis = true;
                Enabled = HasPostedSalesInvoices;
                Image = SendToMultiple;
                ToolTip = 'Prepare to send the document according to the customer''s sending profile, such as attached to an email. The Send document to window opens where you can confirm or select a sending profile.';

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
                    SalesInvHeader: Record "Sales Invoice Header";
                begin
                    SalesInvHeader := Rec;
                    CurrPage.SetSelectionFilter(SalesInvHeader);
                    SalesInvHeader.PrintRecords(true);
                end;
            }
            action(Email)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Send by &Email';
                Image = Email;
                ToolTip = 'Prepare to send the document by email. The Send Email window opens prefilled for the customer where you can add or change information before you send the email.';

                trigger OnAction()
                var
                    SalesInvHeader: Record "Sales Invoice Header";
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
                    SalesInvHeader: Record "Sales Invoice Header";
                begin
                    SalesInvHeader := Rec;
                    CurrPage.SetSelectionFilter(SalesInvHeader);
                    Rec.PrintToDocumentAttachment(SalesInvHeader);
                end;
            }
            action(Navigate)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Find entries...';
                Image = Navigate;
                ShortCutKey = 'Ctrl+Alt+Q';
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
                var
                    ActivityLog: Record "Activity Log";
                begin
                    ActivityLog.ShowEntries(Rec.RecordId);
                end;
            }
            group(Correct)
            {
                Caption = 'Correct';
                action(CorrectInvoice)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Correct';
                    Enabled = HasPostedSalesInvoices;
                    Image = Undo;
                    Scope = Repeater;
                    ToolTip = 'Reverse this posted invoice. A credit memo will be created and matched with the invoice, and the invoice will be canceled. Shipments for the invoice will be reversed. To create a new invoice with the same information, use the Copy function. When you copy an invoice, remember to post shipments for the new invoice.';
                    Visible = not Rec.Cancelled;

                    trigger OnAction()
                    begin
                        CODEUNIT.Run(CODEUNIT::"Correct PstdSalesInv (Yes/No)", Rec);
                    end;
                }
                action(CancelInvoice)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Cancel';
                    Enabled = HasPostedSalesInvoices;
                    Image = Cancel;
                    Scope = Repeater;
                    ToolTip = 'Create and post a sales credit memo that reverses this posted sales invoice. This posted sales invoice will be canceled.';
                    Visible = not Rec.Cancelled;

                    trigger OnAction()
                    begin
                        CODEUNIT.Run(CODEUNIT::"Cancel PstdSalesInv (Yes/No)", Rec);
                    end;
                }
                action(CreateCreditMemo)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Create Corrective Credit Memo';
                    Enabled = HasPostedSalesInvoices;
                    Image = CreateCreditMemo;
                    Scope = Repeater;
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

                        if CorrectPostedSalesInvoice.CreateCreditMemoCopyDocument(Rec, SalesHeader) then
                            PAGE.Run(PAGE::"Sales Credit Memo", SalesHeader);
                    end;
                }
                action(ShowCreditMemo)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Show Canceled/Corrective Credit Memo';
                    Image = CreditMemo;
                    Scope = Repeater;
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
                    Scope = Repeater;
                    ShortCutKey = 'Shift+F7';
                    ToolTip = 'View or edit detailed information about the customer.';
                }
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
        }
        area(Promoted)
        {
            group(Category_Process)
            {
                Caption = 'Process', Comment = 'Generated from the PromotedActionCategories property index 1.';

                actionref("Update Document_Promoted"; "Update Document")
                {
                }
                actionref(Navigate_Promoted; Navigate)
                {
                }
            }
            group(Category_Category7)
            {
                Caption = 'Print/Send', Comment = 'Generated from the PromotedActionCategories property index 6.';

                actionref(Print_Promoted; Print)
                {
                }
                actionref(Email_Promoted; Email)
                {
                }
                actionref(SendCustom_Promoted; SendCustom)
                {
                }
                actionref(AttachAsPDF_Promoted; AttachAsPDF)
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
                actionref(ActivityLog_Promoted; ActivityLog)
                {
                }
                separator(Navigate_Separator)
                {
                }
                actionref(IncomingDoc_Promoted; IncomingDoc)
                {
                }
                actionref(Customer_Promoted; Customer)
                {
                }
            }
            group(Category_Category6)
            {
                Caption = 'Correct', Comment = 'Generated from the PromotedActionCategories property index 5.';
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
            group(Category_Category5)
            {
                Caption = 'Navigate', Comment = 'Generated from the PromotedActionCategories property index 4.';
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

    views
    {
        view(OnlyUnpaid)
        {
            Caption = 'Unpaid';
            Filters = where(Cancelled = CONST(false), Closed = CONST(false));
        }
        view(OnlyPaid)
        {
            Caption = 'Paid';
            Filters = where(Cancelled = CONST(false), Closed = CONST(true));
        }
        view(OnlyCancelled)
        {
            Caption = 'Canceled';
            Filters = where(Cancelled = CONST(true));
        }
    }



    trigger OnAfterGetRecord()
    begin
        if DocExchStatusVisible then
            DocExchStatusStyle := Rec.GetDocExchStatusStyle();
    end;

    trigger OnOpenPage()
    var
        SalesInvoiceHeader: Record "Sales Invoice Header";
        CRMIntegrationManagement: Codeunit "CRM Integration Management";
        OfficeMgt: Codeunit "Office Management";
        HasFilters: Boolean;
    begin
        HasFilters := Rec.GetFilters <> '';
        Rec.SetSecurityFilterOnRespCenter();
        OnOpenPageOnAfterSetFilters(Rec);
        CRMIntegrationEnabled := CRMIntegrationManagement.IsCRMIntegrationEnabled();
        if HasFilters and not Rec.Find() then
            if Rec.FindFirst() then;
        IsOfficeAddin := OfficeMgt.IsAvailable();
        SalesInvoiceHeader.CopyFilters(Rec);
        SalesInvoiceHeader.SetFilter("Document Exchange Status", '<>%1', Rec."Document Exchange Status"::"Not Sent");
        DocExchStatusVisible := not SalesInvoiceHeader.IsEmpty();
    end;

    local procedure DoDrillDown()
    var
        SalesInvoiceHeader: Record "Sales Invoice Header";
    begin
        SalesInvoiceHeader.Copy(Rec);
        SalesInvoiceHeader.SetRange("No.");
        PAGE.Run(PAGE::"Posted Sales Invoice", SalesInvoiceHeader);
    end;

    var
        DocExchStatusStyle: Text;
        CRMIntegrationEnabled: Boolean;
        CRMIsCoupledToRecord: Boolean;
        DocExchStatusVisible: Boolean;
        IsOfficeAddin: Boolean;
        HasPostedSalesInvoices: Boolean;
        ProcessingInvoiceMsg: Label 'Processing record #1#######', Comment = '%1 = Record no';

    [IntegrationEvent(false, false)]
    local procedure OnBeforeCalculateSalesTaxStatistics(var SalesInvoiceHeader: Record "Sales Invoice Header")
    begin
    end;

    [IntegrationEvent(true, false)]
    local procedure OnOpenPageOnAfterSetFilters(var SalesInvoiceHeader: Record "Sales Invoice Header")
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeCreateCreditMemoOnAction(var SalesInvoiceHeader: Record "Sales Invoice Header"; var IsHandled: Boolean)
    begin
    end;
}