namespace multi_cpu
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.button_number = new System.Windows.Forms.Button();
            this.button_range = new System.Windows.Forms.Button();
            this.listBox1 = new System.Windows.Forms.ListBox();
            this.labelResult = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // button_number
            // 
            this.button_number.Location = new System.Drawing.Point(22, 188);
            this.button_number.Name = "button_number";
            this.button_number.Size = new System.Drawing.Size(75, 47);
            this.button_number.TabIndex = 0;
            this.button_number.Text = "Einzelne Zahl Prüfen";
            this.button_number.UseVisualStyleBackColor = true;
            this.button_number.Click += new System.EventHandler(this.ButtonSingleNumber_Click);
            // 
            // button_range
            // 
            this.button_range.Location = new System.Drawing.Point(342, 188);
            this.button_range.Name = "button_range";
            this.button_range.Size = new System.Drawing.Size(75, 47);
            this.button_range.TabIndex = 1;
            this.button_range.Text = "Mehrere Zahlen prüfen";
            this.button_range.UseVisualStyleBackColor = true;
            this.button_range.Click += new System.EventHandler(this.ButtonRange_Click);
            // 
            // listBox1
            // 
            this.listBox1.FormattingEnabled = true;
            this.listBox1.Location = new System.Drawing.Point(244, 48);
            this.listBox1.Name = "listBox1";
            this.listBox1.Size = new System.Drawing.Size(173, 134);
            this.listBox1.TabIndex = 2;
            // 
            // labelErgebnis
            // 
            this.labelResult.AutoSize = true;
            this.labelResult.Location = new System.Drawing.Point(19, 77);
            this.labelResult.Name = "labelErgebnis";
            this.labelResult.Size = new System.Drawing.Size(48, 13);
            this.labelResult.TabIndex = 3;
            this.labelResult.Text = "Ergebnis";
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(22, 12);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(161, 20);
            this.textBox1.TabIndex = 4;
            // 
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(244, 12);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(173, 20);
            this.textBox2.TabIndex = 5;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(429, 419);
            this.Controls.Add(this.textBox2);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.labelResult);
            this.Controls.Add(this.listBox1);
            this.Controls.Add(this.button_range);
            this.Controls.Add(this.button_number);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button button_number;
        private System.Windows.Forms.Button button_range;
        private System.Windows.Forms.ListBox listBox1;
        private System.Windows.Forms.Label labelResult;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.TextBox textBox2;
    }
}

