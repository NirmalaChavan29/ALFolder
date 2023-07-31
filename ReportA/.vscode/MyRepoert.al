report 50100 DateReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    

    dataset
    {
        dataitem(DataItemName; Date)
        {
            
            column(Period_Name;"Period Name")
            {

            }
            trigger OnPreDataItem()
            var
                myInt: Integer;
            begin
                
            end;
            trigger OnAfterGetRecord()
            begin
                
            end;
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(IntVar; myInt)
                    {
                        ApplicationArea = All;

                    }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
         trigger OnInit()
        begin
            Message('We are on init trigger');
            myInt :=10;
        end;
       
    }
    
        trigger OnPreReport()
        begin
            Message('Not yet Processed');
        end;
        trigger OnPostReport()
        begin
            Message('Processing Done');
        end;


    var
        myInt: Integer;
}