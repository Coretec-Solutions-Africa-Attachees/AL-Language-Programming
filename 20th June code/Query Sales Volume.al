// This is a query to retrieve customer sales by quantity.
query 50108 "Customer Sales by quantity"
{
    // This specifies the type of query. In this case, it's a normal query.
    QueryType = Normal;

    // This sorts the query results in descending order by the Quantity column.
    OrderBy = descending(Quantity);

    // This defines the elements of the query.
    elements
    {
        // This data item is for the Customer table.
        dataitem(Customer; Customer)
        {
            // This column is for the customer number.
            column(CustNo; "No.")
            {

            }

            // This column is for the customer name.
            column(CustName; "Name")
            {

            }

            // This data item is for the Sales Line table.
            dataitem(Sales_Line; "Sales Line")
            {
                // This links the Sales Line data item to the Customer data item using the Sell-to Customer No. field.
                DataItemLink = "Sell-to Customer No." = Customer."No.";

                // This specifies the type of join. In this case, it's an inner join.
                SqlJoinType = InnerJoin;

                // This column is for the Quantity field.
                column(Quantity; Quantity)
                {

                }
            }
        }
    }

    // This variable is not used anywhere in the code.
    var
        myInt: Integer;

    // This trigger is empty, so it doesn't perform any actions.
    trigger OnBeforeOpen()
    begin

    end;
}