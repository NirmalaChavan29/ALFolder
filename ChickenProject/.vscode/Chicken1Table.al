table 50100 Chicken1
{
    DataClassification = ToBeClassified;
    Caption = 'Chicken Table';
    
    fields
    {
        field(1;"No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';
        }
        field(2;"Description"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';
        }
         field(3;"Chicken Type Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Chicken Type Code';
            TableRelation = "Chicken1TypeTable";
        }
         field(4;"Last Date modified"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Last Date modified';
        }
         field(5;"Picture"; MediaSet)
        {
            DataClassification = CustomerContent;
            Caption = 'Picture';
        }

    }
    
    keys
    {
        key(Pk; "No.")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown;Description,"Chicken Type Code"){}
        fieldgroup(Brick;Description,Picture){}
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