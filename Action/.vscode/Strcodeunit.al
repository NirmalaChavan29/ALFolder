codeunit 50105 StrCodeunit
{

    trigger OnRun()
    var
        customer: record Customer;
    begin
    //      MyTryMethod();
        // message('An error occured during the operation');
        // customer.Find('-');
        // Message('%1', customer.Name);

        // customer.Find('+');
        // Message('%1', customer.Name);

        // customer.FindFirst();
        // Message('%1', customer.Name);

        // customer.FindLast();
        // Message('%1', customer.Name);
        // customer.FindSet();
        // repeat
        //     // process record
        //     Message(customer.Name);
        // until customer.Next() = 0;
        // SELECT * FROM Customer
        // Length := ArrayLen(SaleAmount);
        // Message('%1', Length);
        // Displays : 0

        // SaleAmount[1] := 1;
        // SaleAmount[2] := 2;
        // SaleAmount[3] := 3;
        // SaleAmount[1] := 10;

        // Length := ArrayLen(SaleAmount);
        // Message('%1', Length);
        // // Displays : 3
        // MyArray[1] := 'Paris';
        // MyArray[2] := 'Rome';
        // MyArray[3] := '';
        // MyArray[4] := 'New York City';
        // CompressArray(MyArray);
        // Message('After compression:\%1\%2\%3\%4', MyArray[1], MyArray[2], MyArray[3], MyArray[4]);
        //     MyArray1[1] := 1;
        //     MyArray1[2] := 2;
        //     MyArray1[3] := 3;
        //     MyArray1[4] := 4;
        //     MyArray1[5] := 5;
        //     MyArray1[6] := 6;
        //     MyArray1[7] := 7;
        //     MyArray1[8] := 8;
        //     MyArray1[9] := 9;
        //     MyArray1[10] := 10;

        //     CopyArray(MyArray2, MyArray1, 6, 5);
        //     Message('Second array:\%1\%2\%3\%4\%5', MyArray2[1], MyArray2[2], MyArray2[3], MyArray2[4], MyArray2[5]);
        // customer: Record Custome
        // customer.Get('30000');

        // if customer.Get('C00030') then
        //     Message('%1', customer)
        // else
        //     Error('Not found');
        // myInteger := 3;
        // myText := Format(myInteger);
        // Message('%1', myText);
        // myInt := 5;
        // Message('Tejal',myInt);


    end;
    local procedure MyTryMethod()
    var
        myInt: Integer;
    begin
        Error('An error occur during execution');
    end;
      // var
    //     myInt: Integer;
    //     SaleAmount: array[10] of Integer;
    //     Length: Integer;
    //     MyArray: array[4] of Text[20];
    //     MyArray1: array[10] of Integer;
    //     MyArray2: array[5] of Integer;
    //     myText: Text[20];
    //     myInteger: Integer;
}
