// Query to retrieve a list of attachés
query 50106 "Attache's List"
{
    // Caption for the query
    Caption = 'Attachee''s List';

    // Type of query (normal query)
    QueryType = Normal;

    // Limit the number of rows to 4
    TopNumberOfRows = 4;

    // Define the elements for the query
    elements
    {
        // Data item definition for Customer
        dataitem(Customer; Customer)
        {
            // Define the columns to be retrieved

            // Column for Address
            column(Address; Address)
            {
            }

            // Column for Balance Due (LCY)
            column(BalanceDueLCY; "Balance Due (LCY)")
            {
            }

            // Column for Budgeted Amount
            column(BudgetedAmount; "Budgeted Amount")
            {
            }

            // Column for Currency Id
            column(CurrencyId; "Currency Id")
            {
            }

            // Column for Credit Limit (LCY)
            column(CreditLimitLCY; "Credit Limit (LCY)")
            {
            }

            // Column for Credit Amount
            column(CreditAmount; "Credit Amount")
            {
            }

            // **Sorting and filtering are commented out**
            // Sorting by Credit Limit (LCY) in descending order
            // DataItemTableView = SORTING("Credit Limit (LCY)" DESCENDING);

            // Limiting the results to top 10 Credit Limits (LCY)
            // DataItemTableView.SETRANGE("No.", 1, 10); // Adjust if necessary to properly limit the results
        }
    }

    // Trigger executed before the query is opened
    trigger OnBeforeOpen()
    begin
        // **Additional logic can be added here if needed**
    end;
}