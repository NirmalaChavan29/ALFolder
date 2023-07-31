pageextension 50136 CustomerLedgerEntriesPagExt extends "Customer Ledger Entries"
{
    layout
    {
        // Add changes to page layout here
        addfirst(factboxes)
        {
            part(CustomerReminderFactbox; "Customer Reminders Factbox")
            {
                SubPageLink = "Customer Entry No." = field("Entry No.");
                ApplicationArea = all;
            }
        }
        addlast(Control1)
        {
            field(NumberOfDaysExpired; "NumberOfDaysExpired")
            {
                ApplicationArea = All;
                Editable = False;
                Caption = 'Number Of Days Expired';
                ToolTip = 'The number Of days this entry is expired,based upon Due Date and Today';
                StyleExpr = DaysExpiredStyle;
            }
        }
    }
    views
    {
        addfirst
        {
            view("Open Entries")
            {
                Caption = 'Open Entries';
                OrderBy = ascending("Due Date");
                Filters = where(Open = const(true));
                SharedLayout = false;

                Layout
                {
                    movefirst(Control1; NumberOfDaysExpired)
                    moveafter(NumberOfDaysExpired; "Due Date")
                }

            }
        }
    }
    var
        NumberOfDaysExpired: Integer;
        DaysExpiredStyle: Text;
        TresholdSetup: Record "Treshold Setup";

    trigger OnOpenPage()
    begin
        if not TresholdSetup.Get() then begin
            ShowTresholdSetupNotification();
            CurrPage.Update();
        end;
    end;

    trigger OnAfterGetRecord()
    begin
        NumberOfDaysExpired := Rec.GetNumberOfDaysExpired();
        case NumberOfDaysExpired of
            TresholdSetup."Treshold 1 Value" .. TresholdSetup."Treshold 2 Value":
                DaysExpiredStyle := Format(TresholdSetup."Treshold 1 Style");
            TresholdSetup."Treshold 2 Value" .. 99999:
                DaysExpiredStyle := Format(TresholdSetup."Treshold 2 Style");
            else
                DaysExpiredStyle := 'None';
        end;
    end;

    local procedure ShowTresholdSetupNotification()
    var
        TresholdSetupNotification: Notification;
        TresholdSetupNotificationMsg: Label 'You need to run Threshold Setup:';
        TresholdSetupNotificationActionLbl: Label 'Click to open the Treshold Setup';
    begin
        TresholdSetupNotification.Message('You need to run the Treshold Setup:');
        TresholdSetupNotification.AddAction('Click here to run TresholdSetup', Codeunit::"ThresholdSetupMngt", 'RunTresholdSetup');
        TresholdSetupNotification.send();
    end;
}