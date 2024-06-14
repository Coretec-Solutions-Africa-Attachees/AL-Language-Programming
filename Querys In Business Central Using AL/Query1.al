// Check changes made to the launch.json file (located in this file's folder) while creating a query using AL code below
// Queries enable fetching of data from multiple tables' records
// Queries enable filtering of data for example choosing specific fields only to show
// Queries can be used as data sources
// Queries can be utilized to select distinct values, avoiding duplicate records
query 50105 "Customer List"
{
    Caption = 'Customer List';
    QueryType = Normal;
    // Line of code below places the query in a certain position in Business Central's Customer page
    QueryCategory = 'Customer List';
    elements
    {
        // Customizing name linked to the table -- Actual name of the table you're querying
        dataitem(Customer; Customer)
        {
            // Customizing name linked to the field -- Actual name of the field
            // The fields below are the only ones to be displayed; all others are not displayed
            column(FullName; "Full Name")
            {
            }
            column(Contact; Contact)
            {
            }
            column(EMail; "E-Mail")
            {
            }
            column(DateOfBirth; "Date Of Birth")
            {
            }
            column(City; City)
            {
            }
            column(Address; Address)
            {
            }
        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}