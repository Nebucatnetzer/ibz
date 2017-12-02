using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace first_webform
{
    public partial class multiplication_table : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        if (!Page.IsPostBack)
            {
                // Total number of rows.
                int rowCnt;
                // Current row count.
                int rowCtr;
                // Total number of cells per row (columns).
                int cellCtr;
                // Current cell counter
                int cellCnt;

                rowCnt = 10;
                cellCnt = 10;

                for (rowCtr = 1; rowCtr <= rowCnt; rowCtr++)
                {
                    // Create new row and add it to the table.
                    TableRow tRow = new TableRow();
                    Table1.Rows.Add(tRow);
                    for (cellCtr = 1; cellCtr <= cellCnt; cellCtr++)
                    {
                        // Create a new cell and add it to the row.
                        TableCell tCell = new TableCell();
                        tCell.Text = Convert.ToString(rowCtr * cellCtr);
                        tRow.Cells.Add(tCell);
                    }
                }

            }
        }
    }
}