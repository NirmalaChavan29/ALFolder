// pageextension 50100 PurchOrderExt extends "Posted Purchase Invoice"
// {
//     layout
//     {
//         // Add changes to page layout here
//     }

//     actions
//     {
//         // Add changes to page actions here
//         addafter("&Invoice")
//         {
//             action(Email)
//             {
//                 Promoted = true;
//                 ApplicationArea = All;
//                 trigger OnAction()
//                 var
//                     EmailCodunit: Codeunit "Email Integration";
//                 begin
//                     EmailCodunit.EmailRFQAttachment(Rec);
//                 end;
//             }
//         }
//     }

//     var

// }