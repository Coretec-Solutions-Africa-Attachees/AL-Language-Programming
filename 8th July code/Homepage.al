page 50118 HomePage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Inventory Management Home';
    SourceTable = "Customer";

    layout
    {
        area(Content)
        {
            group(WelcomeGroup)
            {
                Caption = 'Welcome';

                field(UserInfo; UserInfoText)
                {
                    ApplicationArea = All;
                    Editable = false;
                    StyleExpr = 'Strong';
                }

                field(DailyQuote; GetDailyQuote())
                {
                    ApplicationArea = All;
                    Caption = 'Quote of the Day 💡';
                    Editable = false;
                    StyleExpr = 'Favorable';
                }
            }

            group(QuickStats)
            {
                Caption = 'Quick Statistics';

                field(TotalItems; GetTotalItems())
                {
                    ApplicationArea = All;
                    Caption = 'Total Inventory Items 📦';
                    Editable = false;
                    StyleExpr = 'Attention';
                }

                field(LowStockItems; GetLowStockItems())
                {
                    ApplicationArea = All;
                    Caption = 'Low Stock Items ⚠️';
                    Editable = false;
                    StyleExpr = 'Unfavorable';
                }
            }

            part(InventoryListPart; "Inventory List Part")
            {
                ApplicationArea = All;
                Caption = 'Top 10 Items';
            }

            group(CustomerImageGroup)
            {
                Caption = 'Customer Image';

                field(CustomerImage; CustomerImageExists)
                {
                    ApplicationArea = All;
                    Caption = 'Customer Image';
                    ToolTip = 'Specifies if a customer image is available.';
                    Editable = false;

                    trigger OnDrillDown()
                    begin
                        ShowCustomerPicture();
                    end;
                }
            }

            group(RecentActivity)
            {
                Caption = 'Recent Activity Feed';

                field(RecentTransactions; GetRecentTransactions())
                {
                    ApplicationArea = All;
                    Caption = 'Recent Transactions';
                    Editable = false;
                    StyleExpr = 'Informative';
                    MultiLine = true;
                }
            }

            group(Alerts)
            {
                Caption = 'Alerts and Notifications';

                field(PendingOrders; PendingOrdersCount)
                {
                    ApplicationArea = All;
                    Caption = 'Pending Orders';
                    ToolTip = 'Shows the number of pending orders';

                    trigger OnDrillDown()
                    begin
                        ShowPendingOrders();
                    end;
                }

                field(OverdueInvoices; OverdueInvoicesCount)
                {
                    ApplicationArea = All;
                    Caption = 'Overdue Invoices';
                    ToolTip = 'Shows the number of overdue invoices';

                    trigger OnDrillDown()
                    begin
                        ShowOverdueInvoices();
                    end;
                }
            }
        }
        area(factboxes)
        {
            part(CustomerPicture; "Customer Picture")
            {
                ApplicationArea = All;
                SubPageLink = "No." = FIELD("No.");
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ViewFullInventory)
            {
                ApplicationArea = All;
                Caption = 'View Full Inventory 📋';
                Image = List;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page "Item List";
            }

            action(ExportToExcel)
            {
                ApplicationArea = All;
                Caption = 'Export to Excel 📊';
                Image = ExportToExcel;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    ExportInventoryToExcel();
                end;
            }

            action(ExportReport)
            {
                ApplicationArea = All;
                Caption = 'Export Report 📄';
                Image = Report;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    ExportInventoryReport();
                end;
            }

            action(RefreshData)
            {
                ApplicationArea = All;
                Caption = 'Refresh Data 🔄';
                Image = Refresh;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    CurrPage.Update(false);
                    Message('Data refreshed successfully 🎉');
                end;
            }

            action(Logout)
            {
                ApplicationArea = All;
                Caption = 'Logout 🚪';
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    LogoutUser();
                end;
            }

            action(UploadCustomerImage)
            {
                ApplicationArea = All;
                Caption = 'Upload Customer Image';
                Image = Import;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    UploadCustomerPicture();
                end;
            }

            action(TakeCustomerPhoto)
            {
                ApplicationArea = All;
                Caption = 'Take Customer Picture';
                Image = Camera;
                Promoted = true;
                PromotedCategory = Process;
                Visible = CameraAvailable;

                trigger OnAction()
                begin
                    TakeCustomerPicture();
                end;
            }

            action(ExportCustomerPhoto)
            {
                ApplicationArea = All;
                Caption = 'Export Customer Picture';
                Image = Export;
                Promoted = true;
                PromotedCategory = Process;
                Enabled = CustomerImageExists;

                trigger OnAction()
                begin
                    ExportCustomerPicture();
                end;
            }

            action(DeleteCustomerPhoto)
            {
                ApplicationArea = All;
                Caption = 'Delete Customer Picture';
                Image = Delete;
                Promoted = true;
                PromotedCategory = Process;
                Enabled = CustomerImageExists;

                trigger OnAction()
                begin
                    DeleteCustomerPicture();
                end;
            }
        }
    }

    var
        LoggedInUserName: Text;
        LoggedInCompanyName: Text[100];
        UserInfoText: Text;
        Camera: Codeunit Camera;
        [InDataSet]
        CameraAvailable: Boolean;
        [InDataSet]
        CustomerImageExists: Boolean;
        OverrideImageQst: Label 'The existing picture will be replaced. Do you want to continue?';
        MustSpecifyNameErr: Label 'You must specify a customer name before you can import a picture.';
        DeleteImageQst: Label 'Are you sure you want to delete the picture?';
        MimeTypeTok: Label 'image/jpeg';
        PendingOrdersCount: Integer;
        OverdueInvoicesCount: Integer;

    trigger OnOpenPage()
    begin
        UpdateUserInfo();
        CameraAvailable := Camera.IsAvailable();
        if Rec.FindFirst() then;  // Load the first customer for demo purposes
    end;

    trigger OnAfterGetRecord()
    begin
        CustomerImageExists := Rec.Image.HasValue;
    end;

    local procedure UpdateUserInfo()
    begin
        if LoggedInUserName <> '' then
            UserInfoText := StrSubstNo('Welcome, %1 from %2 👋', LoggedInUserName, LoggedInCompanyName)
        else
            UserInfoText := 'Welcome, Guest Please log in. 👋';
    end;

    procedure SetLoggedInUser(UserName: Text; CompanyName: Text[100])
    begin
        LoggedInUserName := UserName;
        LoggedInCompanyName := CompanyName;
        UpdateUserInfo();
    end;

    local procedure GetDailyQuote(): Text
    var
        Quotes: array[3] of Text;
        DayOfYear: Integer;
    begin
        Quotes[1] := 'The best way to predict the future is to create it. 🚀';
        Quotes[2] := 'Success is not final, failure is not fatal: it is the courage to continue that counts. 💪';
        Quotes[3] := 'Believe you can and you''re halfway there. 🌟';
        DayOfYear := Date2DMY(Today, 3);
        exit(Quotes[DayOfYear mod 3 + 1]);
    end;

    local procedure GetTotalItems(): Text
    var
        Item: Record Item;
    begin
        Item.SetRange("No.");
        exit(StrSubstNo('%1 items', Item.Count));
    end;

    local procedure GetLowStockItems(): Text
    var
        Item: Record Item;
    begin
        Item.SetRange("No.");
        Item.SetFilter(Inventory, '<=%1', 10);  // Adjust this threshold as needed
        exit(StrSubstNo('%1 items', Item.Count));
    end;

    local procedure ExportInventoryToExcel()
    var
        InventoryExport: Record Item;
        ExcelBuffer: Record "Excel Buffer" temporary;
        ExcelFileName: Text;
        ExcelFileNameLbl: Label 'Inventory_%1.xlsx', Comment = '%1 = Current Date';
    begin
        ExcelFileName := StrSubstNo(ExcelFileNameLbl, Format(Today, 0, '<Year4><Month,2><Day,2>'));

        ExcelBuffer.DeleteAll();
        ExcelBuffer.NewRow();
        ExcelBuffer.AddColumn('Item No.', false, '', true, false, false, '', ExcelBuffer."Cell Type"::Text);
        ExcelBuffer.AddColumn('Description', false, '', true, false, false, '', ExcelBuffer."Cell Type"::Text);
        ExcelBuffer.AddColumn('Quantity', false, '', true, false, false, '', ExcelBuffer."Cell Type"::Number);

        if InventoryExport.FindSet() then
            repeat
                ExcelBuffer.NewRow();
                ExcelBuffer.AddColumn(InventoryExport."No.", false, '', false, false, false, '', ExcelBuffer."Cell Type"::Text);
                ExcelBuffer.AddColumn(InventoryExport.Description, false, '', false, false, false, '', ExcelBuffer."Cell Type"::Text);
                ExcelBuffer.AddColumn(InventoryExport.Inventory, false, '', false, false, false, '', ExcelBuffer."Cell Type"::Number);
            until InventoryExport.Next() = 0;

        ExcelBuffer.CreateNewBook(ExcelFileName);
        ExcelBuffer.WriteSheet('Inventory', CompanyName, UserId);
        ExcelBuffer.CloseBook();
        // ExcelBuffer.OpenBook();

        Message('Inventory exported to Excel successfully 📊');
    end;

    local procedure ExportInventoryReport()
    var
        ReportSelection: Integer;
        FormatSelection: Integer;
        InventoryReport: Report "Inventory Valuation";
        ItemList: Report "Item List";
        TempBlob: Codeunit "Temp Blob";
        OutStream: OutStream;
        InStream: InStream;
        FileName: Text;
    begin
        ReportSelection := StrMenu('Inventory Valuation,Item List', 1, 'Select a report to export:');
        if ReportSelection = 0 then
            exit;

        FormatSelection := StrMenu('PDF,Excel', 1, 'Select export format:');
        if FormatSelection = 0 then
            exit;

        TempBlob.CreateOutStream(OutStream);

        case FormatSelection of
            1:  // PDF
                begin
                    if ReportSelection = 1 then begin
                        InventoryReport.SaveAs('', ReportFormat::Pdf, OutStream);
                        FileName := 'InventoryValuation.pdf';
                    end else begin
                        ItemList.SaveAs('', ReportFormat::Pdf, OutStream);
                        FileName := 'ItemList.pdf';
                    end;
                end;
            2:  // Excel
                begin
                    if ReportSelection = 1 then begin
                        InventoryReport.SaveAs('', ReportFormat::Excel, OutStream);
                        FileName := 'InventoryValuation.xlsx';
                    end else begin
                        ItemList.SaveAs('', ReportFormat::Excel, OutStream);
                        FileName := 'ItemList.xlsx';
                    end;
                end;
        end;

        TempBlob.CreateInStream(InStream);
        DownloadFromStream(InStream, 'Export', '', 'All Files (*.*)|*.*', FileName);
        Message('Report exported successfully as %1 🎉', FileName);
    end;

    local procedure LogoutUser()
    begin
        LoggedInUserName := '';
        LoggedInCompanyName := '';
        UpdateUserInfo();
        Message('You have been logged out successfully 👋');
        CurrPage.Close();
        Page.Run(Page::"LoginPage");  // Assuming you have a login page
    end;

    local procedure ShowCustomerPicture()
    var
        TempBlob: Codeunit "Temp Blob";
        OutStream: OutStream;
        InStream: InStream;
        FileName: Text;
    begin
        if Rec.Image.HasValue then begin
            TempBlob.CreateOutStream(OutStream);
            Rec.Image.ExportStream(OutStream);
            TempBlob.CreateInStream(InStream);
            FileName := 'customer_image.jpg';
            DownloadFromStream(InStream, 'Export', '', 'All Files (*.*)|*.*', FileName);
        end
        else
            Message('No customer image available.');
    end;

    local procedure UploadCustomerPicture()
    var
        PictureInStream: InStream;
        FileName: Text;
    begin
        if Rec."No." = '' then
            Error(MustSpecifyNameErr);

        if Rec.Image.HasValue() then
            if not Confirm(OverrideImageQst) then
                exit;

        if UploadIntoStream('Select a picture to upload', '', 'All Files (*.*)|*.*', FileName, PictureInStream) then begin
            Clear(Rec.Image);
            Rec.Image.ImportStream(PictureInStream, FileName);
            Rec.Modify(true);
            Message('Customer image uploaded successfully.');
            CurrPage.Update(false);
        end;
    end;

    local procedure TakeCustomerPicture()
    var
        PictureInStream: InStream;
        PictureName: Text;
    begin
        Rec.TestField("No.");
        if Camera.GetPicture(PictureInStream, PictureName) then begin
            Clear(Rec.Image);
            Rec.Image.ImportStream(PictureInStream, PictureName);
            Rec.Modify(true);
        end;
    end;

    local procedure ExportCustomerPicture()
    var
        TempBlob: Codeunit "Temp Blob";
        OutStream: OutStream;
        InStream: InStream;
        FileName: Text;
    begin
        Rec.TestField("No.");
        Rec.TestField(Image);

        FileName := Rec."No." + '.jpg';
        TempBlob.CreateOutStream(OutStream);
        Rec.Image.ExportStream(OutStream);
        TempBlob.CreateInStream(InStream);
        DownloadFromStream(InStream, 'Export', '', 'All Files (*.*)|*.*', FileName);
    end;

    local procedure DeleteCustomerPicture()
    begin
        if not Confirm(DeleteImageQst) then
            exit;

        Clear(Rec.Image);
        Rec.Modify(true);
    end; 

    local procedure GetRecentTransactions(): Text
    var
        Transactions: List of [Text];
        RecentActivity: Record "Recent Activity";
        TransactionText: Text;
        Transaction: Text;
    begin
        Transactions.Add('Sold 10 units of Product A');
        Transactions.Add('Purchased 5 units of Product B');
        Transactions.Add('Transferred 3 units of Product C to Warehouse 2');

        RecentActivity.SetRange("Date", Today - 7, Today); // Get transactions within the last 7 days
        if RecentActivity.FindSet() then begin
            repeat
                Transaction := Format(RecentActivity."Date") + ' - ' + RecentActivity.Description;
                Transactions.Add(Transaction);
            until RecentActivity.Next() = 0;
        end;

        foreach Transaction in Transactions do begin
            TransactionText += Transaction + '<br>';
        end; // Add a semicolon here

        exit(TransactionText);
    end;

    local procedure ShowPendingOrders()
    begin
        // Logic to show pending orders
    end;

    local procedure ShowOverdueInvoices()
    begin
        // Logic to show overdue invoices
    end;
}