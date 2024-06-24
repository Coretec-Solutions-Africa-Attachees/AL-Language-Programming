codeunit 50112 "Auto Save Vendor Report"
{
    SingleInstance = true;
    Subtype = Normal;

    trigger OnRun()
    var
        FilePath: Text;
        TempBlob: Codeunit "Temp Blob";
        FileManagement: Codeunit "File Management";
        OutStr: OutStream;
        RecordRef: RecordRef;
        Parameters: Text;
        Success: Boolean;
    begin
        FilePath := 'C:\Reports\VendorReport.xlsx';

        // Create OutStream for TempBlob
        TempBlob.CreateOutStream(OutStr);

        // Initialize RecordRef
        RecordRef.Open(DATABASE::Vendor);

        // Generate the report and save it as Excel into the stream
        Success := Report.SaveAs(50111, '', ReportFormat::Excel, OutStr, RecordRef);

        // Check if the report was successfully generated
        if not Success then
            Error('Failed to generate the report.');

        // Save the stream to the specified file path
        FileManagement.BLOBExport(TempBlob, FilePath, true);

        // Inform the user that the report has been saved (for debugging purposes, can be removed later)
        Message('Report saved to: %1', FilePath);
    end;
}
