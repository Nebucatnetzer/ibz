using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2017_12_02_states
{
    public partial class Calculation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected int Subtraction(int value1, int value2)
        {
            int result = value1 - value2;
            return result;
        }
        protected int Addition(int value1, int value2)
        {
            int result = value1 + value2;
            return result;
        }

        public delegate int Calculate(int value1, int value2);

        protected void ButtonCalculate_Click(object sender, EventArgs e)
        {
            int int_value1 = Convert.ToInt32(TextBoxValue1.Text);
            int int_value2 = Convert.ToInt32(TextBoxValue2.Text);

            Calculate delegation_calculation;
            delegation_calculation = null;

            if (RadioButtonSubtraction.Checked)
            {
                delegation_calculation = Subtraction;
            }

            if (RadioButtonAddition.Checked)
            {
                delegation_calculation = Addition;
            }
            int int_result = delegation_calculation(int_value1, int_value2);
            TextBoxResult.Text = int_result.ToString();

        }
    }
}