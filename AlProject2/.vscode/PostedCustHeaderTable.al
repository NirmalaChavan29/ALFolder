table 50109 PostedCustHeaderTable
{
    DataClassification = CustomerContent;
    Caption = 'New Header';

    fields
    {
        field(1; "No."; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'No.';
        }
        field(2; "Name"; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Name';
        }
        field(3; "Description"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';
        }
        field(4; "Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Date';
        }
        field(5; "Code"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Code';
        }
        field(6; "Address"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Address';
        }
        field(7; "City"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'City';
        }
        field(8; "Phone No."; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Phone No.';
        }
        field(9; "Country"; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Country';
        }
        field(10; "Email"; TExt[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Email';
        }
    }

    keys
    {
        key(Pk; "No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;
   
}