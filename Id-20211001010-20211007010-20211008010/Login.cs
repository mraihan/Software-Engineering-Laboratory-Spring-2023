using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
namespace MultiFaceRec
{
    public partial class Login : Form
    {
        SqlConnection con;
        public Login()
        {
            InitializeComponent();
            string constr = global::MultiFaceRec.Properties.Settings.Default.MyDbConnectionString; 
            con = new SqlConnection(constr);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string usertype="";
            string querry = "select * from Register_User where user_name='" + textBox1.Text + "' AND pwd='" + textBox3.Text + "'";
            SqlCommand cmd = new SqlCommand(querry, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                this.Hide();
                usertype = dr["user_type"].ToString();

            }
            else
            {
                this.Hide();
                MessageBox.Show("Invalid Credintials");
            }
            if (usertype.Equals("Admin"))
            {
                this.Hide();
                MakeRegistered mr = new MakeRegistered();
                mr.Show();
            }
            else
            {
                this.Hide();
                FrmPrincipal fp = new FrmPrincipal();
                fp.Show();

            }
            con.Close();   
        }

        private void Login_Load(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {

        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            this.Hide();
            Register l = new Register();
            l.Show();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }
    }
}
