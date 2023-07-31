tableextension 50131 TransferTableExt extends "Transfer Header"
{
    fields
    {
        // Add changes to table fields here
    }
    trigger OnModify()
    begin
        if "Transfer-from Code"=Record::transfer header= "East" then 
        "Transfer-to Code" = "East";
    end;
      
     
    var
        myInt: Integer;
}