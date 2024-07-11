page 50121 "Company Logo Management"
{
    Caption = 'Company Logo Management';
    PageType = Card;
    SourceTable = "Company Logo";
    InsertAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(content)
        {
            group(General)
            {
                field(Logo; Rec.Logo)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the company logo.';
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(ImportPicture)
            {
                ApplicationArea = All;
                Caption = 'Import';
                Image = Import;
                ToolTip = 'Import a picture file.';

                trigger OnAction()
                begin
                    ImportFromDevice();
                end;
            }
            action(DeletePicture)
            {
                ApplicationArea = All;
                Caption = 'Delete';
                Enabled = DeleteExportEnabled;
                Image = Delete;
                ToolTip = 'Delete the logo.';

                trigger OnAction()
                begin
                    DeleteLogo();
                end;
            }
        }
    }

    trigger OnAfterGetCurrRecord()
    begin
        SetEditableOnPictureActions();
    end;

    var
        OverrideImageQst: Label 'The existing logo will be replaced. Do you want to continue?';
        DeleteImageQst: Label 'Are you sure you want to delete the logo?';
        SelectPictureTxt: Label 'Select a picture to upload';
        DeleteExportEnabled: Boolean;

    local procedure ImportFromDevice()
    var
        FileManagement: Codeunit "File Management";
        FileName: Text;
        ClientFileName: Text;
        InStr: InStream;
    begin
        Rec.FindFirst();
        if Rec.Logo.Count > 0 then
            if not Confirm(OverrideImageQst) then
                Error('');

        ClientFileName := '';
        UploadIntoStream(SelectPictureTxt, '', '', ClientFileName, InStr);
        if ClientFileName <> '' then begin
            Clear(Rec.Logo);
            Rec.Logo.ImportStream(InStr, ClientFileName);
            Rec.Modify(true);
        end;
    end;

    local procedure SetEditableOnPictureActions()
    begin
        DeleteExportEnabled := Rec.Logo.Count <> 0;
    end;

    local procedure DeleteLogo()
    begin
        if not Confirm(DeleteImageQst) then
            exit;
        Clear(Rec.Logo);
        Rec.Modify(true);
    end;
}