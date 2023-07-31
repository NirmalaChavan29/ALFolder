codeunit 50125 MyCodeunit
{
    trigger OnRun()
    begin
        
    end;
    [EventSubscriber(ObjectType::Page, Page::"Customer Card", 'OnBeforeValidateEvent', 'Address', false,false )]
    local procedure ()
    begin
        
    end;
    local procedure CheckForPlusSign()
    var
        myInt: Integer;
        TextToVerify :Text[20];
    begin
        
    end;
    
    var
        myInt: Integer;
}