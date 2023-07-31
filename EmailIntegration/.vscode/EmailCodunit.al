codeunit 50100 "Email Integration"
{
    procedure EmailRFQAttachment(PurchHeader: Record "Purch. Inv. Header")
    var
        Vendor: Record 23;
        PurchHdr: Record "Purch. Inv. Header";
        Subject: Text[100];
        AttachementTempBlob: Codeunit "Temp Blob";
        AttachmentInstream: InStream;
        AttachementOutstream: OutStream;
        FileMgt: Codeunit "File Management";
        recPurchref: RecordRef;
        repRequestForQuote: Report 406;
        //new
        MailSent: Boolean;
        FilePath: Text;
    //PurchaseInvoiceHeaderEdit: Codeunit 50002;
    begin
        if PurchHeader."Email sent" = true then
            Error('Mail has been already sent so you can not sent again');

        IF (PurchHeader."Buy-from Vendor No." <> '') THEN BEGIN
            Vendor.GET(PurchHeader."Buy-from Vendor No.");
            Vendor.TESTFIELD(Vendor."E-Mail");
            AttachementTempBlob.CreateOutStream(AttachementOutstream);
            repRequestForQuote.SetTableView(PurchHeader);
            //pkm  repRequestForQuote.SetDocNo(PurchHeader."No.");
            repRequestForQuote.SaveAs('', ReportFormat::Pdf, AttachementOutstream);
            AttachementTempBlob.CreateInStream(AttachmentInstream);
            // Receipent.Add(Contact."E-Mail");
            Receipent.Add(Vendor."E-Mail");
            //  Receipent.Add('pradeep.maurya@robo-soft.net');
            //  Receipent.Add('neha.borse@robo-soft.net');
            CLEAR(Subject);
            // IF PurchHeader."Requisition No." <> '' THEN
            //    Subject := 'IMR No.: ' + PurchHeader."Requisition No." + ' ';
            Subject += 'RFQ No.: ' + PurchHeader."No.";
            Body := 'Dear Vendor,' + '</br>';
            Body += '</br>';
            Body += 'Please find attached RFQ' + '</br>';
            Body += 'You are kindly requested to send Quotation' + '</br>';
            Body += '</br>';
            Body += '</br>';
            body += 'Regards' + '</br>';
            Body += USERID;
            EmailMessage.Create(Receipent, Subject, Body, true);
            EmailMessage.AddAttachment('Report.Pdf', 'PDF', AttachmentInstream);
            if Email.Send(EmailMessage, Enum::"Email Scenario"::Default) then
                MailSent := true;
            // Message('%1', MailSent);
            //if MailSent then
            // PurchaseInvoiceHeaderEdit.UpdatePurchaseInvoiceHeader(PurchHeader, MailSent, TODAY);
        end;
    end;


    var
        EmailMessage: Codeunit "Email Message";
        Email: Codeunit Email;
        Receipent: List of [Text];
        Body: Text;

        Contact: Record 5050;
}