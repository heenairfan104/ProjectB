using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace DBMSProjectB
{
    /// <summary>
    /// This form manage students by performing crud operation on Student.
    /// </summary>
    /// <remarks>
    /// Can add student,view student details,delete and update student.
    /// </remarks>
    /// <return>
    /// return the list of students in grid view</return>
    public partial class Form1 : Form
    {
        int id;
        public Form1()
        {
            InitializeComponent();
        }
//connection string for sql connection.
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-4CTJEVU\SQLEXPRESS;Initial Catalog=ProjectB;Integrated Security=True");
        SqlCommand cmd;
    //Code to add student by using sql insert query.  
        private void btn_AddStudent_Click(object sender, EventArgs e)
        {
            if (txtfirstname.Text != "" && txtlastname.Text != "" && txtemail.Text != "" && txtcontact.Text != "" && txtregistrationNo.Text != "" && comboBoxstatus.Text != "")
            {
                SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-4CTJEVU\SQLEXPRESS;Initial Catalog=ProjectB;Integrated Security=True");
                conn.Open();
                if (conn.State == ConnectionState.Open)
                {
                    string query = "Insert into Student(FirstName,LastName,Contact,Email,RegistrationNumber,Status) Values ('" + txtfirstname.Text + "','" + txtlastname.Text + "','" + txtcontact.Text + "','" + txtemail.Text + "','" + txtregistrationNo.Text + "',(select LookupId from Lookup where Name='" + comboBoxstatus.Text + "'))";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    MessageBox.Show("Data Added Successfully");

                    DataTable dt = new DataTable();
                    SqlDataAdapter adapter = new SqlDataAdapter("Select * from Student", conn);
                    adapter.Fill(dt);
                    dataGridViewStudent.DataSource = dt;
                    txtfirstname.Text = "";
                    txtlastname.Text = "";
                    txtemail.Text = "";
                    txtcontact.Text = "";
                    txtregistrationNo.Text = "";
                    comboBoxstatus.Text = "";

                    id = 0;
                }
            }
            else
            {
                MessageBox.Show("Please Provide Complete Information to Submit");
            }
        }
        //Code to show data in data grid view.
        private void Form1_Load(object sender, EventArgs e)
        {
            conn.Open();
            DataTable dt = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter("Select * from Student", conn);
            adapter.Fill(dt);
            dataGridViewStudent.DataSource = dt;
            conn.Close();

            //DataGridViewButtonColumn Delete = new DataGridViewButtonColumn();
            //Delete.Text = "Delete";
            //Delete.Name = "Delete";
            //Delete.HeaderText = "Delete";
            //Delete.UseColumnTextForButtonValue = true;
            //dataGridViewStudent.Columns.Add(Delete);


            //DataGridViewButtonColumn Edit = new DataGridViewButtonColumn();
            //Edit.Text = "Edit";
            //Edit.Name = "Edit";
            //Edit.HeaderText = "Edit";
            //Edit.UseColumnTextForButtonValue = true;
            //dataGridViewStudent.Columns.Add(Edit);

        }
        // //Code to Delete student by using sql delete query. 
        private void btn_DeleteStudent_Click(object sender, EventArgs e)
        {
            if (id != 0)

            {
                cmd = new SqlCommand("delete Student where Id=@id", conn);
                conn.Open();
                cmd.Parameters.AddWithValue("@id", id);
                cmd.ExecuteNonQuery();
                conn.Close();
                MessageBox.Show("Student Record Deleted Successfully!");
                DataTable dt = new DataTable();
                SqlDataAdapter adapter = new SqlDataAdapter("Select * from Student", conn);
                adapter.Fill(dt);
                dataGridViewStudent.DataSource = dt;
                txtlastname.Text = "";
                txtfirstname.Text = "";
                txtcontact.Text = "";
                txtemail.Text = "";
                txtregistrationNo.Text = "";
                txtcontact.Text = "";
                comboBoxstatus.Text = "";

               // id = 0;
            }
            else
            {
                MessageBox.Show("First Select Data from table which you want to Delete");
            }
        }

        private void dataGridViewStudent_RowHeaderMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            //Code to select row from table and then its data wil be shown in textboxes then update or delete data.
            id = Convert.ToInt32(txtfirstname.Text = dataGridViewStudent.Rows[e.RowIndex].Cells[0].Value.ToString());
            txtfirstname.Text = dataGridViewStudent.Rows[e.RowIndex].Cells[1].Value.ToString();
            txtlastname.Text = dataGridViewStudent.Rows[e.RowIndex].Cells[2].Value.ToString();
            txtcontact.Text = dataGridViewStudent.Rows[e.RowIndex].Cells[3].Value.ToString();
            txtemail.Text = dataGridViewStudent.Rows[e.RowIndex].Cells[4].Value.ToString();

            txtregistrationNo.Text = dataGridViewStudent.Rows[e.RowIndex].Cells[5].Value.ToString();
            comboBoxstatus.Text = Convert.ToInt32(dataGridViewStudent.Rows[e.RowIndex].Cells[6].Value.ToString()).ToString();
        }

        private void dataGridViewStudent_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

            ////id = Convert.ToInt32(txtfirstname.Text = dataGridViewStudent.Rows[e.RowIndex].Cells[0].Value.ToString());
            ////txtfirstname.Text = dataGridViewStudent.Rows[e.RowIndex].Cells[1].Value.ToString();
            ////txtlastname.Text = dataGridViewStudent.Rows[e.RowIndex].Cells[2].Value.ToString();
            ////txtcontact.Text = dataGridViewStudent.Rows[e.RowIndex].Cells[3].Value.ToString();
            ////txtemail.Text = dataGridViewStudent.Rows[e.RowIndex].Cells[4].Value.ToString();

            ////txtregistrationNo.Text = dataGridViewStudent.Rows[e.RowIndex].Cells[5].Value.ToString();
            ////comboBoxstatus.Text = Convert.ToInt32(dataGridViewStudent.Rows[e.RowIndex].Cells[6].Value.ToString()).ToString();

            //if (e.ColumnIndex == 7)
            //{
            //    Form1 a = new Form1();
            //    // a.txtID.Text = this.dataGridViewemployeelist.CurrentRow.Cells[1].Value.ToString();
            //    a.txtfirstname.Text = this.dataGridViewStudent.CurrentRow.Cells[1].Value.ToString();
            //    a.txtlastname.Text = this.dataGridViewStudent.CurrentRow.Cells[2].Value.ToString();
            //    a.txtcontact.Text = this.dataGridViewStudent.CurrentRow.Cells[3].Value.ToString();
            //    a.txtregistrationNo.Text = this.dataGridViewStudent.CurrentRow.Cells[4].Value.ToString();
            //    a.comboBoxstatus.Text = this.dataGridViewStudent.CurrentRow.Cells[5].Value.ToString();
            //    a.Show();
            //    this.Hide();

            //    }

            }
        // //Code to Update student by using sql update query. 
        private void btn_UpdateStudent_Click(object sender, EventArgs e)
        {
            if (txtfirstname.Text != "" && txtlastname.Text != "" && txtcontact.Text != "" && txtemail.Text != "")   //&& txtregistrationNo.Text != "" && comboBoxstatus.Text != ""
            {
                conn.Open();
                SqlCommand command = new SqlCommand("Update Student set FirstName='" + txtfirstname.Text + "', LastName ='" + txtlastname.Text + "',Contact = '" + txtcontact.Text + "',Email='" + txtemail.Text + "', RegistrationNumber='" + txtregistrationNo.Text + "',Status=(select Lookupid from Lookup where LookupId='" + Convert.ToInt32(comboBoxstatus.Text) + "') where Id ='" + id + "'", conn);

                command.ExecuteNonQuery();
                MessageBox.Show("Student Record Updated Successfully");
                conn.Close();
             
                
                DataTable dt = new DataTable();
                SqlDataAdapter adapter = new SqlDataAdapter("Select * from Student", conn);
                adapter.Fill(dt);
                dataGridViewStudent.DataSource = dt;
                txtfirstname.Text = "";
                txtlastname.Text = "";
                txtcontact.Text = "";
                txtemail.Text = "";
                txtregistrationNo.Text = "";
                comboBoxstatus.Text = "";

            }
            else
            {
                MessageBox.Show("Please Select the row from table to update the data");
            }
        
          
        }

        private void txtfirstname_TextChanged(object sender, EventArgs e)
        {
          
        }
        //validation for  first name
        //first name donot accept digits
        private void txtfirstname_KeyPress(object sender, KeyPressEventArgs e)
        {
            
            if (e.Handled = !(char.IsLetter(e.KeyChar) || char.IsPunctuation(e.KeyChar)|| e.KeyChar == (char)Keys.Back || e.KeyChar == (char)Keys.Space))
            {
                e.Handled = true;
                base.OnKeyPress(e);
                MessageBox.Show("Enter Alphabets only for this field");
            }

        }
        //validation for last name
        //last name donot accept digits
        private void txtlastname_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.Handled = !(char.IsLetter(e.KeyChar) || char.IsPunctuation(e.KeyChar) || e.KeyChar == (char)Keys.Back || e.KeyChar == (char)Keys.Space))
            {
                e.Handled = true;
                base.OnKeyPress(e);
                MessageBox.Show("Enter Alphabets only for this field");
            }
        }
        //validation for correct email address format.
        //correct format is: abc@gmail.com
        private void txtemail_Validating(object sender, CancelEventArgs e)
        {

            System.Text.RegularExpressions.Regex rEmail = new System.Text.RegularExpressions.Regex(@"^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$");

            if (txtemail.Text.Length > 0 && txtemail.Text.Trim().Length != 0)
            {
                if (!rEmail.IsMatch(txtemail.Text.Trim()))
                {
                    MessageBox.Show("Please Enter Valid Email Adress");
                    txtemail.SelectAll();
                    e.Cancel = true;
                }
            }
        }
//validation for phone number format.
//phone number accept only digit
//phone number cannot exceed more than 11 digits.
        private void txtcontact_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.Handled = !(char.IsDigit(e.KeyChar) || e.KeyChar == (char)Keys.Back || e.KeyChar == (char)Keys.Space))
            {
                e.Handled = true;
                base.OnKeyPress(e);
                MessageBox.Show("Enter only digits");
            }
            if (txtcontact.Text.Length == 11)
            {
                e.Handled = true;
                base.OnKeyPress(e);
                MessageBox.Show("Phone Number cannot exceed more than 11 digits");
            }

        }

        private void txtregistrationNo_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtregistrationNo_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.Handled = !(char.IsLetterOrDigit(e.KeyChar) || char.IsPunctuation(e.KeyChar) || e.KeyChar == (char)Keys.Back || e.KeyChar == (char)Keys.Space))
            {
                e.Handled = true;
                base.OnKeyPress(e);
                MessageBox.Show("Enter Valid Registration Number");
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Dashboard s = new Dashboard();
            s.Show();
            this.Hide();
        }
    }
    }

