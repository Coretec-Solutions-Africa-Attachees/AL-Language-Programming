query 50107 "Top 5 Consumers"
{
    QueryType = Normal; //This is a normal query
    Caption = 'Top 5 Consumers'; //Obvious, the caption
    OrderBy = descending(Sales__LCY_); //Query is sorted in the descending order
    TopNumberOfRows = 5; //This now returns the top 5 rows 
    QueryCategory = 'Customer List'; //This will add this query in the CustomerList dropdown

    elements
    {
        dataitem(Cust__Ledger_Entry; "Cust. Ledger Entry") //This is defining a data item whereby the query will retrieve data from
        {
            filter(Posting_Date; "Posting Date") //This filter is not actually doing anything, but it acts a s a placeholder for a filter for Posting field
            {

            }
            //Columns below are defined and therefore inculded in the query result

            column(Customer_No_; "Customer No.")
            {

            }
            column(Customer_Name; "Customer Name")
            {

            }
            column(Sales__LCY_; "Sales (LCY)")
            {
                Method = Average; //This specifies that the sales(LCY) column should be calculated using the average method
            }
        }
    }

    var
        myInt: Integer;

    trigger OnBeforeOpen()
    begin

    end;
}