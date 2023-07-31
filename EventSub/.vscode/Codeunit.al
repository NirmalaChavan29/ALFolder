codeunit 50100 TestCodeunit
{
    EventSubscriberInstance = StaticAutomatic;
    Permissions = tabledata "Value Entry" = RIMD;

    [EventSubscriber(ObjectType::Codeunit, 22, 'OnafterInsertValueEntry', '', false, false)]
    local procedure OnBeforeInsertValueEntry(var ValueEntry: Record "Value Entry")
    var
        SalesInvHeader: Record "Sales Invoice Header";
        SalesCrMemoHdr: Record "Sales Cr.Memo Header";
    begin
        if (ValueEntry."Item Ledger Entry Type" = ValueEntry."Item Ledger Entry Type"::Sale) then
            case ValueEntry."Document Type" of
                ValueEntry."Document Type"::"Sales Credit Memo":
                    begin

                        if SalesCrMemoHdr.Get(ValueEntry."Document No.") then;
                        ValueEntry.Name := SalesCrMemoHdr."Sell-to Customer Name";
                        ValueEntry.Address2 := SalesCrMemoHdr."Sell-to Customer Name";
                        //ValueEntry.Description := SalesCrMemoHdr."Final LLC Customer Name";
                    end;
                ValueEntry."Document Type"::"Sales Invoice":
                    begin

                        if SalesInvHeader.Get(ValueEntry."Document No.") then;
                        //ValueEntry.Validate(Description, SalesInvHeader."Sell-to Customer Name");
                        ValueEntry.Validate(Name, SalesInvHeader.Name);
                        ValueEntry.Validate(Address2, SalesInvHeader.Address2);


                        ValueEntry.Modify()
                    end;
            end;
    end;


    [EventSubscriber(ObjectType::Table, Database::"Gen. Journal Line", 'OnAfterCopyGenJnlLineFromSalesHeader', '', true, true)]
    local procedure OnAfterCopyGenJnlLineFromSalesHeader(SalesHeader: Record "Sales Header"; var GenJournalLine: Record "Gen. Journal Line")
    begin
        GenJournalLine.Name := SalesHeader.Name;
        GenJournalLine.Description := SalesHeader.Description;
        GenJournalLine.Address2 := SalesHeader.Adreess2;
    end;

    [EventSubscriber(ObjectType::Table, Database::"Cust. Ledger Entry", 'OnAfterCopyCustLedgerEntryFromGenJnlLine', '', true, true)]

    local procedure OnAfterCopyCustLedgerEntryFromGenJnlLine(var CustLedgerEntry: Record "Cust. Ledger Entry"; GenJournalLine: Record "Gen. Journal Line")

    begin
        CustLedgerEntry.Name := GenJournalLine.Name;
        CustLedgerEntry.Description := GenJournalLine.Description;
        CustLedgerEntry.Address2 := GenJournalLine.Address2;
    end;

    [EventSubscriber(ObjectType::Table, Database::"G/L Entry", 'OnAfterCopyGLEntryFromGenJnlLine', '', true, true)]
    local procedure OnAfterCopyGLEntryFromGenJnlLine(var GLEntry: Record "G/L Entry"; GenJournalLine: Record "Gen. Journal Line")

    begin
        GLEntry.Name := GenJournalLine.Name;
        GLEntry.Description := GenJournalLine.Description;
        GLEntry.Address2 := GenJournalLine.Address2;
    end;

    [EventSubscriber(ObjectType::Table, Database::"VAT Entry", 'OnAfterCopyFromGenJnlLine', '', true, true)]
    local procedure MyProcedureCopy(GenJournalLine: Record "Gen. Journal Line"; var VATEntry: Record "VAT Entry")
    begin
        VATEntry.Name := GenJournalLine.Name;
        VATEntry.Description := GenJournalLine.Description;
        VATEntry.Address2 := GenJournalLine.Address2;
    end;

    [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnCopyFromItemOnAfterCheck', '', true, true)]
    local procedure OnCopyFromItemOnAfterCheck(Item: Record Item; var SalesLine: Record "Sales Line")
    begin
        SalesLine.Name := Item.Name;
    end;

    [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnBeforeValidateNo', '', false, false)]
    local procedure MyProcedure(var IsHandled: Boolean)
    var
        r: Boolean;
    begin
        r := IsHandled;
    end;


    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'onAfterPostSalesDoc', '', true, true)]

    local procedure MyProcedure1(var SalesHeader: Record "Sales Header")
    begin
        // if SalesHeader.Description = '' then
        //     Error('Not Found');
        // Saleshrd.Description := 'Please insert correct info';
        // Saleshrd.TestField(Description, 'Nirmala');
        // Saleshrd2.Open(Database::"Sales Header");
        // Saleshrd1 := Saleshrd2.Field(50101);
        // Saleshrd1.Value := 'Plese insert correct info';
        // SalesHeader.TestField(Description, 'Nirmala');
        // if UpperCase(SalesHeader.Description) <> 'NIRMALA' then
        //     Error('insert correct info');
        // if Confirm('Are you want to continue?') then
        //     Message('Ok')
        // else
        //     Message('Not Ok');
        // MyString := 'HelloWorldOfManyCharacters';
        // Message('%1', MyString.IndexOf('M'));
        // MyLongString := 'HelloWorldOfManyManyCharacters';

        // newString := CopyStr(MyLongString, 5, 10);

        // Message('%1', newString);
        // newString2 := MyLongString.Substring(5, 10);
        // Message('%1', newString2);
        // MyLongString2 := 'This ,is a comma,seperated,String';
        // // newString3 := SelectStr(2, MyLongString2);
        // newString3 := MyLongString2.Split(',').Get(2);
        // Message('%1', newString3);
        // Message('STRLEN: %1', StrLen(MyLongString));
        // Message('MAXSTRLEN: %1', MaxStrLen(MyLongString));
        // myIntegerList.Add(5);
        // myIntegerList.Add(2);
        // myIntegerList.Add(3);
        // exists := myIntegerList.Contains(5);
        // myInteger := myIntegerList.Get(3);
        // myTextList.Add('HELLO ');
        // myTextList.Add('DYNAMICS ');
        // myTextList.Add('HELLO ');
        // myTextList.Add('BUSINESS ');
        // myTextList.Add('CENTRAL');
        // myTextList.Set(2, 'DYNAMICS 365 ');
        // if myTextList.Remove('HELLO ') then
        //     Message('HELLO WAS REMOVED');
        // myInteger := myTextList.Get(2);

        // if myIntegerList.Contains(3) then
        // Message(myInteger)
        // else
        //     Message('3 is not in the list');
        // Message('%1', myInteger);
        // Message('%1', myTextList);
        // Message('%1', exists);
        // TODAY IS 04/17/2020

        // Message('%1', Today());
        // // Displays : 04/17/2020

        // MyDatePart := Date2DMY(Today(), 1);
        // Message('%1', MyDatePart);
        // // Displays : 17

        // MyDatePart := Date2DMY(Today(), 2);
        // Message('%1', MyDatePart);
        // // Displays : 4
        // TODAY IS 04/17/2020

        // Message('%1', Today());
        // // Displays : 04/17/2020

        // MyDatePart := Date2DWY(Today(), 1);
        // Message('%1', MyDatePart);
        // // Displays : 5

        // MyDatePart := Date2DWY(Today(), 2);
        // Message('%1', MyDatePart);
        // // Displays : 16
        // NewNumber := Round(1234.56789, 0.1, '>');
        // Message('%1', NewNumber);
        // Displays : 1,234.568
        // NewNumber := Abs(-10.235);

        // Message('%1\', NewNumber);
        // x := 50;
        // y := -50;
        // z := 0;
        // Number1 := Random(x);
        // Number2 := Random(y);
        // Number3 := Random(z);
        // Message(Text000, NUmber1, Number2, Number3);

        // Length := ArrayLen(SaleAmount);
        // Message('%1', Length);
        // // Displays : 0

        // SaleAmount[1] := 1;
        // SaleAmount[2] := 2;
        // SaleAmount[3] := 3;
        // SaleAmount[1] := 10;

        // Length := ArrayLen(SaleAmount);
        // Message('%1', Length);
        // // Displays : 3


    end;

    [EventSubscriber(ObjectType::Table, Database::"Sales Invoice Line", 'OnAfterInitFromSalesLine', '', true, true)]
    local procedure OnCopyFromItemOnAfterChechhk(var SalesInvLine: Record "Sales Invoice Line"; Salesline: Record "Sales Line")
    begin
        SalesInvLine.Name := SalesLine.Name;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnAfterGetSalesLines', '', true, true)]
    local procedure OnCopyFromSalesLine(var NewSalesLine: Record "Sales Line"; var TempSalesLineGlobal: Record "Sales Line")
    begin
        NewSalesLine.Name := TempSalesLineGlobal.Name;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnAfterPostSalesLine', '', true, true)]
    local procedure MyProcedure3(var SalesHeader: Record "Sales Header"; var SalesLine: Record "Sales Line")
    begin
        SalesHeader.Name := SalesLine.Name;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnAfterInsertInvoiceHeader', '', true, true)]
    local procedure MyProcedure4(var SalesHeader: Record "Sales Header"; var SalesInvHeader: Record "Sales Invoice Header")
    begin
        SalesInvHeader.Name := SalesHeader.Name;
        SalesInvHeader.Address2 := SalesHeader.Adreess2;
        SalesInvHeader.Description := SalesHeader.Description;
    end;
   


    var
        Saleshrd: Record "Sales Header";

    //     Saleshrd1: FieldRef;
    //     Saleshrd2: RecordRef;

    // MyString: Text[50];

    // MyLongString: Text[50];
    // newString: Text[10];
    // newString2: Text[10];

    // myIntegerList: List of [Integer];
    // exists: Boolean;
    // myInteger: Text[20];

    // myTextList: List of [Text];
    // MyLongString2: Text[60];
    // newString3: Text[10];
    // MyDatePart: Integer;
    // Days: Text[50];
    // NewNumber: Decimal;
    // x: Integer;
    // y: Integer;
    // z: Integer;
    // Number1: Integer;
    // Number2: Integer;
    // Number3: Integer;
    // Text000: Label 'Number1 = %1,Number2 = %2,Number3 =%3';
    // SaleAmount: array[10] of Integer;
    // Length: Integer;



}