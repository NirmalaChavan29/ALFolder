page 50112 "Chicken Mangt RoleCenter"
{
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {
            part(O365HeadlineOrderProcessor; "Headline RC Order Processor")
            {
                ApplicationArea = All;
            }

            part(O365CustomerActivity; "O365 Customer Activity Page")
            {
                ApplicationArea = All;
            }
            part(Activities; "O365 Activities")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(Sections)
        {

            group(MasterData)
            {
                Caption = 'Master Data';
                Image = RegisteredDocs;
                action(ChickenList)
                {
                    Caption = 'Chicken List';
                    ApplicationArea = All;
                    RunObject = Page "Chicken List";
                }
                action(ChickenTypes)
                {
                    Caption = 'Chicken Types';
                    ApplicationArea = All;
                    RunObject = Page "Chicken Type";
                }
                action(PostedQualityControlMajorList)
                {
                    Caption = 'Posted Quality Control Major';
                    ApplicationArea = All;
                    RunObject = Page "PostedQualityControlMajorList";
                }
            }
            group(Documents)
            {
                Caption = 'Documents';
                Image = List;

                action(EggProduction)
                {
                    Caption = 'Egg Production List';
                    ApplicationArea = All;
                    RunObject = Page "Egg Production Line List";
                }
                action(EggTypes)
                {
                    Caption = 'Egg Types';
                    ApplicationArea = All;
                    RunObject = Page "Egg Types";
                }

            }
        }
        area(Embedding)
        {
            action(eChickenList)
            {
                Caption = 'Chicken List';
                ApplicationArea = All;
                RunObject = Page "Chicken List";
            }
            action(eChickenTypes)
            {
                Caption = 'Chicken Types';
                ApplicationArea = All;
                RunObject = Page "Chicken Type";
            }
            action(eEggProduction)
            {
                Caption = 'Egg Production list';
                ApplicationArea = All;
                RunObject = Page "Egg Production list";
            }
            action(eEggTypes)
            {
                Caption = 'Egg Types';
                ApplicationArea = All;
                RunObject = Page "Egg Types";
            }
        }
    }
}