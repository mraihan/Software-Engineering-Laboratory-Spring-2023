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
    public partial class Register : Form
    {
        SqlConnection con;
       

        public Register()
        {
            InitializeComponent();
            string constr = global::MultiFaceRec.Properties.Settings.Default.MyDbConnectionString;
            con = new SqlConnection(constr);
        }

        private void Register_Load(object sender, EventArgs e)
        {
            textBox5.Text = DateTime.Now.ToShortDateString();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string reg = "no";
            string querry = "insert into Register_User( user_name,e_mail,pwd,contact,user_type,reg_date,spec,roll_no,Registered)values('" + textBox1.Text + "','" + textBox2.Text + "','" + textBox3.Text + "','" + textBox4.Text + "','" + comboBox1.SelectedItem.ToString() + "','" + textBox5.Text + "','" + textBox6.Text + "','" + textBox7.Text + "','" + reg + "')";
           SqlCommand cmd = new SqlCommand(querry, con);
           con.Open();
           int a = cmd.ExecuteNonQuery();
           if (a != 0)
           {
               MessageBox.Show("User Registered");

           }
           else
           {

               MessageBox.Show("User Not Registered");
           }
           con.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Hide();
            Login l = new Login();
            l.Show();
            
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(comboBox1.SelectedItem.ToString().Equals("Student")){
                textBox7.Visible = true;
                label7.Visible = true;
                label8.Visible = true;
                textBox6.Visible = true;
               
            }
            else if (comboBox1.SelectedItem.ToString().Equals("Teacher"))
            {
                label7.Visible = false;
                label8.Visible = false;
                textBox7.Visible = false;
                textBox6.Visible = false;

            }
            else
            {
                label7.Visible = false;
                label8.Visible = false;
                textBox7.Visible = false;
                textBox6.Visible = false;
            }
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click_1(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            this.Hide();
            Login l = new Login();
            l.Show();
        }

        

        private void label8_Click(object sender, EventArgs e)
        {

        }



        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        
    }
}
