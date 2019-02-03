using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BloodMnagement
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void login()
        {

            if (textBox1.Text == "blac3fox" && textBox2.Text == "123456")
            {
                Form2 nextForm = new Form2();
                this.Hide();
                nextForm.ShowDialog();
                this.Close();

            }
            else
                MessageBox.Show("Invalido!!");
        }

        private void enterKey(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                login();
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            login();
        }
    }
}
