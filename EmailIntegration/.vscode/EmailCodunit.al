codeunit 50100 "Email Integration"
{
    procedure EmailRFQAttachment(Cust: Record Customer)
    var
        Cust1: Record Customer;
        Vendor: Record 23;
        PurchHdr: Record "Purch. Inv. Header";
        Subject: Text[100];
        AttachementTempBlob: Codeunit "Temp Blob";
        AttachmentInstream: InStream;
        AttachementOutstream: OutStream;
        FileMgt: Codeunit "File Management";
        recPurchref: RecordRef;
        repRequestForQuote: Report 101;
        //new
        MailSent: Boolean;
        FilePath: Text;
    //PurchaseInvoiceHeaderEdit: Codeunit 50002;
    begin
        if Cust."Email sent" = true then
            Error('Mail has been already sent so you can not sent again');

        IF (Cust."No." <> '') THEN BEGIN
            Cust.GET(Cust."No.");
            Cust.TESTFIELD(Cust."E-Mail");
            AttachementTempBlob.CreateOutStream(AttachementOutstream);
            repRequestForQuote.SetTableView(Cust);
            //repRequestForQuote.SetDocNo(Cust."No.");
            repRequestForQuote.SaveAs('', ReportFormat::Pdf, AttachementOutstream);
            AttachementTempBlob.CreateInStream(AttachmentInstream);
            // Receipent.Add(Contact."E-Mail");
            Receipent.Add(Cust."E-Mail");
            Receipent.Add('nirmala.chavan@robo-soft.net');
            //  Receipent.Add('neha.borse@robo-soft.net');
            CLEAR(Subject);
            // IF PurchHeader."Requisition No." <> '' THEN
            //    Subject := 'IMR No.: ' + PurchHeader."Requisition No." + ' ';
            Subject += 'RFQ No.: ' + Cust."No.";
            Body := 'Dear Customer,' + '</br>';
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
            Message('Mail has been Sent');
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