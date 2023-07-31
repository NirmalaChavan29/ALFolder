report 50100 TransportationOfgoodsreport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    Caption = 'Transportation Of Goods Report';
    PreviewMode = PrintLayout;
    RDLCLayout = './TransportationOfgoodsreport.rdl';
    dataset
    {
        dataitem("Transfer Header"; "Transfer Header")
        {
            column(CompInfoName; CompInfo.Name)
            {

            }
            column(CompAddress; CompInfo.Address)
            {

            }
            column(CompInfoAddress2; CompInfo."Address 2")
            {

            }
            column(CompInfoCity; CompInfo.City)
            {

            }
            column(CompInfoPostCode; CompInfo."Post Code")
            {

            }
            column(CompInfoCountry; CompInfo."Country/Region Code")
            {

            }
            column(CompInfoEmail; CompInfo."E-Mail")
            {

            }
            column(CompInfoPhoneNo; CompInfo."Phone No.")
            {

            }
            column(CompInfoGSTIN; CompInfo.GetRegistrationNumber)
            {

            }
            column(Posting_Date; "Posting Date")
            {

            }
            column(Mode_of_Transport; "Mode of Transport")
            {

            }
            column(Vehicle_No_; "Vehicle No.")
            {

            }
            column(LR_RR_Date; "LR/RR Date")
            {

            }
            column(LR_RR_No_; "LR/RR No.")
            {

            }
            column(Contact; Contact)
            {

            }
            column(Add; Add)
            {

            }
            column(Add2; Add2)
            {

            }
            column(Post; Post)
            {

            }
            column(city; city)
            {

            }
            column(Country; Country)
            {

            }
            column(phoneNo; phoneNo)
            {

            }
            dataitem("Transfer Line"; "Transfer Line")
            {
                DataItemLink = "Document No." = field("No.");
                column(SRNo;SRNo)
                {}
                column(Description;Description)
                {

                }
                column(HSN_SAC_Code;"HSN/SAC Code")
                {

                }
                column(Quantity;Quantity)
                {

                }
                
                trigger OnAfterGetRecord()
                begin
                     SRNo+=1;
                end;
            }
            trigger OnAfterGetRecord()
            begin
                loc.SetRange(Code, TransferHeader."Transfer-to Code");
                if loc.Find('-') then begin
                    Contact := loc.Contact;
                    Add := loc.Address;
                    Add2 := loc."Address 2";
                    Post := loc."Post Code";
                    city := loc.City;
                    Country := loc."Country/Region Code";
                    phoneNo := loc."Phone No.";

                end;
            end;

            trigger OnPreDataItem()
            begin
                CompInfo.get;
                CompInfo.CalcFields(Picture);




            end;
        }
    }





    var
        myInt: Integer;
        CompInfo: Record "Company Information";
        loc: Record Location;
        TransferHeader: Record "Transfer Header";
        Contact: Text[100];
        Add: Text[100];
        Add2: text[50];
        Post: Code[20];
        city: Text[30];
        Country: code[10];
        phoneNo: Text[30];
        State: Code[10];
        SRNo:Integer;
}