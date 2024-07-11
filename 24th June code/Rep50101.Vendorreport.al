report 50111 "Vendor report"
{
    ApplicationArea = All;
    Caption = 'Vendor report';
    UsageCategory = ReportsAndAnalysis;

    ExcelLayout = 'Vendor Report.xlsx';
    DefaultLayout = Excel;

    dataset
    {
        dataitem(Vendor; Vendor)
        {
            column(Name; Name)
            {
            }
            column(City; City)
            {
            }
            column(Payments; Payments)
            {
            }
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
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }

    trigger OnPostReport()
    var
        FilePath: Text;
        TempBlob: Codeunit "Temp Blob";
        FileManagement: Codeunit "File Management";
        OutStr: OutStream;
        RecordRef: RecordRef;
    begin
        FilePath := 'C:\Reports\VendorReport.xlsx';

        // Create OutStream for TempBlob
        TempBlob.CreateOutStream(OutStr);

        // Initialize RecordRef
        RecordRef.Open(DATABASE::Vendor);

        // Generate the report and save it as Excel into the stream
        Report.SaveAs(50111, '', ReportFormat::Excel, OutStr, RecordRef);

        // Save the stream to the specified file path
        FileManagement.BLOBExport(TempBlob, FilePath, true);

        // Inform the user that the report has been saved
        Message('Report saved to: %1', FilePath);
    end;
}
