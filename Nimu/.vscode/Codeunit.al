codeunit 50133 ThresholdSetupMngt
{
    procedure RunThresholdSetup(var ThresholdSetupNotification: Notification)
    var
        ThresholdSetup: Page "Treshold Setup";
    begin
        ThresholdSetup.Run();
    end;
}