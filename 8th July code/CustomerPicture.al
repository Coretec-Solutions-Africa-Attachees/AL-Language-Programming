page 50128 "Customer Picturee"
{
    Caption = 'Customer Picture';
    ApplicationArea = All;
    UsageCategory = Administration;
    DeleteAllowed = false;
    InsertAllowed = false;
    LinksAllowed = false;
    PageType = CardPart;
    SourceTable = Customer;

    layout
    {
        area(content)
        {
            field(Picture; Rec.Image)
            {
                ApplicationArea = All;
                ShowCaption = false;
                ToolTip = 'Shows the customer picture.';
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(CapturePicture)
            {
                ApplicationArea = All;
                Caption = 'Take';
                Image = Camera;
                ToolTip = 'Activate the camera on the device.';
                Visible = CameraAvailable;

                trigger OnAction()
                begin
                    TakePicture;
                end;
            }
            action(ImportPicture)
            {
                ApplicationArea = All;
                Caption = 'Import';
                Image = Import;
                ToolTip = 'Import a picture file.';

                trigger OnAction()
                begin
                    ImportFromDevice;
                end;
            }
            action(ExportFile)
            {
                ApplicationArea = All;
                Caption = 'Export';
                Enabled = DeleteExportEnabled;
                Image = Export;
                ToolTip = 'Export the picture to a file.';

                trigger OnAction()
                begin
                    ExportPicture;
                end;
            }
            action(DeletePicture)
            {
                ApplicationArea = All;
                Caption = 'Delete';
                Enabled = DeleteExportEnabled;
                Image = Delete;
                ToolTip = 'Delete the record.';

                trigger OnAction()
                begin
                    DeleteItemPicture;
                end;
            }
        }
    }

    var
        Camera: Codeunit Camera;
        [InDataSet]
        CameraAvailable: Boolean;
        DeleteExportEnabled: Boolean;
        OverrideImageQst: Label 'The existing picture will be replaced. Do you want to continue?';
        DeleteImageQst: Label 'Are you sure you want to delete the picture?';
        SelectPictureTxt: Label 'Select a picture to upload';
        MustSpecifyDescriptionErr: Label 'You must add a description to the item before you can import a picture.';

    trigger OnAfterGetCurrRecord()
    begin
        CameraAvailable := Camera.IsAvailable;
        DeleteExportEnabled := Rec.Image.HasValue;
    end;

    local procedure TakePicture()
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

    local procedure ImportFromDevice()
    var
        PictureInStream: InStream;
        FileName: Text;
    begin
        Rec.TestField("No.");
        if Rec.Image.HasValue then
            if not Confirm(OverrideImageQst) then
                exit;

        if UploadIntoStream(SelectPictureTxt, '', 'All Files (*.*)|*.*', FileName, PictureInStream) then begin
            Clear(Rec.Image);
            Rec.Image.ImportStream(PictureInStream, FileName);
            Rec.Modify(true);
        end;
    end;

    local procedure ExportPicture()
    var
        PictureOutStream: OutStream;
        PictureInStream: InStream;
        FileName: Text;
        TempBlob: Codeunit "Temp Blob";
    begin
        Rec.TestField("No.");
        Rec.TestField(Image);

        FileName := Rec."No." + '.jpg';
        TempBlob.CreateOutStream(PictureOutStream);
        Rec.Image.ExportStream(PictureOutStream);
        TempBlob.CreateInStream(PictureInStream);

        DownloadFromStream(PictureInStream, 'Export', '', 'All Files (*.*)|*.*', FileName);
    end;

    local procedure DeleteItemPicture()
    begin
        Rec.TestField("No.");

        if not Confirm(DeleteImageQst) then
            exit;

        Clear(Rec.Image);
        Rec.Modify(true);
    end;
}