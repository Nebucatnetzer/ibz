using System;
using System.Windows.Forms;


namespace multi_cpu
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        int number;
        private void ButtonSingleNumber_Click(object sender, EventArgs e)
        {
            number = Convert.ToInt32(textBox1.Text);
            if (isPrime(number))
            {
                    labelResult.Text = number.ToString() + " ist eine Primzahl.";
            }
            else
            {
                    labelResult.Text = number.ToString() + " ist keine Primzahl.";
            }
        }

        private bool isPrime(int testNumber)
        {
            int Divider = testNumber / 2;
            while (testNumber % Divider != 0)
            {
                Divider--;
            }
            if (Divider == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        private void ButtonRange_Click(object sender, EventArgs e)
        {
            int Range = Convert.ToInt32(textBox2.Text);
            int Counter = 2;

            while (Counter < Range)
            {
                if (isPrime(Counter))
                {
                    listBox1.Items.Add(Convert.ToString(Counter));
                }
                Counter++;
            }
        }
    }
}
