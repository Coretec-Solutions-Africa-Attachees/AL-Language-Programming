// This is my new AL extension.
// This object names and IDs are unique across all extensions.
// AL snippets below start with t*

pageextension 50100 CustomerListExt extends "Customer List"
{
    trigger OnOpenPage();
    begin
        Message('App published: Enock first Al programming ');
    end;
}