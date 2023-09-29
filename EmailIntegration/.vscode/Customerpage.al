pageextension 50101 CustomerPageExt extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addafter(Address)
        {
            field("Email Sent"; Rec."Email Sent")
            {
                ApplicationArea = all;

            }
        }
    }

    actions
    {
        // Add changes to page actions here
        addafter("&Customer")
        {
            action(EmailSent)
            {
                Promoted = true;
                ApplicationArea = All;
                trigger OnAction()
                var
                    EmailCodunit: Codeunit "Email Integration";
                begin
                    EmailCodunit.EmailRFQAttachment(Rec);
                end;
            }
        }
    }

    var

}