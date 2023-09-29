pageextension 50105 SalesOrderListExt extends "Sales Order"
{
    actions
    {
        addafter("O&rder")
        {
            action(PrintSelectedLayout)
            {
                Caption = 'Print Selected Layout';
                Ellipsis = true;
                Image = Print;
                Promoted = true;
                PromotedCategory = Category8;
                trigger OnAction()
                var
                    ReportLayoutSelection: Record "Report Layout Selection";
                    SalesHeader: Record "Sales Header";
                    ZYLayouts: Label 'ZY Test Layout 01,ZY Test Layout 02,ZY Test Layout 03';
                    Selection: Integer;
                begin
                    SalesHeader.Reset();
                    CurrPage.SetSelectionFilter(SalesHeader);
                    Selection := StrMenu(ZYLayouts);
                    case Selection of
                        1:
                            ReportLayoutSelection.SetTempLayoutSelected('1305-000002');
                        2:
                            ReportLayoutSelection.SetTempLayoutSelected('1305-000004');
                        3:
                            ReportLayoutSelection.SetTempLayoutSelected('1305-000003');
                        else
                            exit;
                    end;
                    Report.Run(Report::"Standard Sales - Order Conf.", true, true, SalesHeader);
                end;
            }
        }
    }
}