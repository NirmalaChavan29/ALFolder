// page 60100 NewSaleOrder
// {
//     PageType = Card;
//     //ApplicationArea = All;
//     UsageCategory = Administration;
//     SourceTable = "Sales Header";

//     layout
//     {
//         area(Content)
//         {
//             group(General)
//             {
//                 Caption = 'General';
//                 field("Sell-to Customer No."; Rec."Sell-to Customer No.")
//                 {
//                     ApplicationArea = All;
//                 }
//                 field("Sell-to Customer Name"; Rec."Sell-to Customer Name")
//                 {
//                     ApplicationArea = All;
//                 }
//                 field("Ship-to Address"; Rec."Ship-to Address")
//                 {
//                     ApplicationArea = All;
//                 }
//                 field("Sell-to Address 2"; Rec."Sell-to Address 2")
//                 {
//                     ApplicationArea = All;
//                 }
//                 field("Sell-to City"; Rec."Sell-to City")
//                 {
//                     ApplicationArea = All;
//                 }
//                 field("Sell-to County"; Rec."Sell-to County")
//                 {
//                     ApplicationArea = All;
//                 }

//                 field("Sell-to Post Code"; Rec."Sell-to Post Code")
//                 {
//                     ApplicationArea = All;
//                 }
//                 field("Sell-to Country/Region Code"; Rec."Sell-to Country/Region Code")
//                 {
//                     ApplicationArea = All;
//                 }
//                 field("Sell-to Contact No."; Rec."Sell-to Contact No.")
//                 {
//                     ApplicationArea = All;
//                 }
//                 field("Sell-to Phone No."; Rec."Sell-to Phone No.")
//                 {
//                     ApplicationArea = All;
//                 }
//                 field("Sell-to E-Mail"; Rec."Sell-to E-Mail")
//                 {
//                     ApplicationArea = All;
//                 }
//                 field("Sell-to Contact"; Rec."Sell-to Contact")
//                 {
//                     ApplicationArea = All;
//                 }
//                 field("No. of Archived Versions"; Rec."No. of Archived Versions")
//                 {
//                     ApplicationArea = All;
//                 }
//                 field("Document Date"; Rec."Document Date")
//                 {
//                     ApplicationArea = All;
//                 }
//                 field("Posting Date"; Rec."Posting Date")
//                 {
//                     ApplicationArea = All;
//                 }
//             }
//             group(ShippingAndBilling)
//             {
//                 Caption = 'Shipping and Billing';
//                 field(Ship; Rec.Ship)
//                 {
//                     ApplicationArea = All;
//                 }
//                 field("Ship-to Name"; Rec."Ship-to Name")
//                 {
//                     ApplicationArea = All;
//                 }

//             }
//         }

//     }

//     actions
//     {
//         area(Processing)
//         {
//             action(ActionName)
//             {
//                 ApplicationArea = All;

//                 trigger OnAction()
//                 begin

//                 end;
//             }
//         }
//     }
// }