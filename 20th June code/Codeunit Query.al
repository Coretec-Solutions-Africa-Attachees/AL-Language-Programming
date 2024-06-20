// This is a codeunit to filter and display customer sales greater than 10.
codeunit 50107 MyCodeunit
{
    // This is the main trigger that gets executed when the codeunit is run.
    trigger OnRun()
    begin
        // We're setting a filter on the CustomerQuery to only include records where the Quantity is greater than 10.
        CustomerQuery.SetFilter(Quantity, '>10');
        // We're opening the query to prepare it for reading.
        CustomerQuery.Open();
        // We're reading each record in the query and executing the code inside the loop.
        while CustomerQuery.Read do begin
            // We're displaying a message for each record, showing the customer name and quantity.
            Message(Textbox, CustomerQuery.CustName, CustomerQuery.Quantity);
        end;
        // We're closing the query after it has been processed.
        CustomerQuery.Close();
    end;

    // This is a variable declaration for the query.
    var
        CustomerQuery: Query "Customer Sales by quantity";

        // This is a variable declaration for the message format.
        Textbox: TextConst ENU = 'Customer name = %1, Quantity =%2,';
}