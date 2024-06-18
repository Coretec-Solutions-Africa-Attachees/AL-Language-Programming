// Check changes made to the launch2.json file (located in this file's folder) to directly launch a query in BC
query 50106 "Customer Sales"
{
    QueryType = Normal;
    Caption = 'Customer Sales';
    OrderBy = descending(Total_Sales);
    // Line of code below selects the number of rows from the top that will be listed
    TopNumberOfRows = 5;

    elements
    {
        dataitem(Cust__Ledger_Entry; "Cust. Ledger Entry")
        {
            // Select columns you'd specifically wish to see using column
            column(Customer_Number; "Customer No.")
            {
                Caption = 'Customer Number';
            }

            column(Customer_Name; "Customer Name")
            {

            }

            column(Total_Sales; "Sales (LCY)")
            {
                // Finding the total sum of sales for each customer
                Method = Sum;
            }

            // Select columns you'd specifically not wish to see using filter
            // filter(FilterName; SourceFieldName)
            // {

            // }
        }
    }

    var
        myInt: Integer;

    trigger OnBeforeOpen()
    begin

    end;
}