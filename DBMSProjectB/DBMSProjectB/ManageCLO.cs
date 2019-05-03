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
    /// This form manage CLOs by performing crud operation..
    /// </summary>
    /// <remarks>
    /// Can add CLO,view CLO details,delete and update student.
    /// </remarks>
    /// <return>
    /// return the list of Clos in grid view</return>
    public partial class ManageCLO : Form
    {
        int id;
        public ManageCLO()
        {
            InitializeComponent();
        }
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-4CTJEVU\SQLEXPRESS;Initial Catalog=ProjectB;Integrated Security=True");
        SqlCommand cmd;
        //insert query
        private void btn_AddCLO_Click(object sender, EventArgs e)
        {
            if (txtcloname.Text != "")
            {
                conn.Open();
                string query = "insert into Clo(Name,DateCreated,DateUpdated) Values ('" + txtcloname.Text + "','" + DateTime.Now + "','" + DateTime.Now + "')";
                SqlDataAdapter cdn = new SqlDataAdapter(query, conn);
                cdn.SelectCommand.ExecuteNonQuery();
                conn.Close();
                MessageBox.Show("Data Added Successfully");
                DataTable dt = new DataTable();
                SqlDataAdapter adapter = new SqlDataAdapter("Select * from Clo", conn);
                adapter.Fill(dt);
               dataGridViewCLO.DataSource = dt;
                txtcloname.Text = " ";
            }
            else
            {
                MessageBox.Show("please Enter the required info");
            }
        }

        private void dataGridViewCLO_RowHeaderMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            id = Convert.ToInt32(txtcloname.Text = dataGridViewCLO.Rows[e.RowIndex].Cells[0].Value.ToString());
            txtcloname.Text = dataGridViewCLO.Rows[e.RowIndex].Cells[1].Value.ToString();
        }
//show data
        private void ManageCLO_Load(object sender, EventArgs e)
        {
            conn.Open();
            DataTable dt = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter("Select * from Clo", conn);
            adapter.Fill(dt);
            dataGridViewCLO.DataSource = dt;



            conn.Close();
        }
//delete query
        private void btn_deleteCLO_Click(object sender, EventArgs e)
        {
            if (id != 0)

            {

                //cmd = new SqlCommand("delete RubricLevel where RubricId=@id", conn);
                //conn.Open();
                //cmd.Parameters.AddWithValue("@id", id);
                //cmd.ExecuteNonQuery();
                //conn.Close();

                cmd = new SqlCommand("delete Rubric where CloId=@id", conn);
                conn.Open();
                cmd.Parameters.AddWithValue("@id", id);
                cmd.ExecuteNonQuery();
                conn.Close();
                cmd = new SqlCommand("delete clo where Id=@id", conn);
                conn.Open();
                cmd.Parameters.AddWithValue("@id", id);
                cmd.ExecuteNonQuery();
                conn.Close();
                
                MessageBox.Show("Record Deleted Successfully!");
                DataTable dt = new DataTable();
                SqlDataAdapter adapter = new SqlDataAdapter("Select * from Clo", conn);
                adapter.Fill(dt);
                dataGridViewCLO.DataSource = dt;
                txtcloname.Text = "";



            }
            else
            {
                MessageBox.Show("Please Select Record to Delete");
            }
        }
//update query
        private void bbtn_updateCLO_Click(object sender, EventArgs e)
        {
            if (txtcloname.Text != "")
            {
                conn.Open();
                SqlCommand command = new SqlCommand("Update Clo set [Name]='" + txtcloname.Text + "', [DateUpdated] ='" + DateTime.Now + "' where Id ='" + id + "'", conn);

                command.ExecuteNonQuery();
                MessageBox.Show(" CLO Record Updated Successfully");
                conn.Close();
                DataTable dt = new DataTable();
                SqlDataAdapter adapter = new SqlDataAdapter("Select * from clo", conn);
                adapter.Fill(dt);
                dataGridViewCLO.DataSource = dt;
                txtcloname.Text = "";
            }
            else
            {
                MessageBox.Show("Please Select the row whose data you want to update");
            }

        }

        private void button1_Click(object sender, EventArgs e)
        {
            //go to ManageRubric form.
            ManageRubrics r = new ManageRubrics();
            r.Show();
            this.Hide();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Dashboard d = new Dashboard();
            d.Show();
            this.Hide();

        }
    }
}
