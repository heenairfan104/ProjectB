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
    /// This form manage Rubric by performing crud operation on Student.
    /// </summary>
    /// <remarks>
    /// Can add Rubric,view Rubric details,delete and update student. Rubric must be added against specific CLO name.
    /// </remarks>
    /// <return>
    /// return the list of Rubric in grid view</return>
    public partial class ManageRubrics : Form
    {
        int id;
        public ManageRubrics()
        {
            InitializeComponent();
        }
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-4CTJEVU\SQLEXPRESS;Initial Catalog=ProjectB;Integrated Security=True");
        SqlCommand cmd;
//insert query
        private void btn_Addrubrics_Click(object sender, EventArgs e)
        {
            if (comboBoxcloname.Text != "" && richTextBox1.Text != "")
            {
                conn.Open();
                string query = "insert into Rubric(Details,CloId) values ('" + richTextBox1.Text + "',(select Id from Clo where Id='"  +Convert.ToInt32(comboBoxcloname.SelectedValue)+  "'))";
                SqlDataAdapter adp = new SqlDataAdapter(query, conn);
                adp.SelectCommand.ExecuteNonQuery();
                conn.Close();
                MessageBox.Show("Rubric Added Successfully");
                DataTable dt = new DataTable();
                SqlDataAdapter adapter = new SqlDataAdapter("Select * from Rubric", conn);
                adapter.Fill(dt);
                dataGridViewRubrics.DataSource = dt;
                richTextBox1.Text = " ";
                comboBoxcloname.Text = " ";
                //cleardata();
            }
            else
            {
                MessageBox.Show("Please Provide complete information");
            }

            //if (comboBoxcloname.Text != "" && richTextBox1.Text != "")
            //{

            //    conn.Open();
            //    string query = "insert into Rubric(Details,CloId) values ('" + richTextBox1.Text + "',(select Id from Clo where Id='" + comboBoxcloname.SelectedValue + "'))";

            //    SqlCommand cmd = new SqlCommand(query, conn);
            //    cmd.ExecuteNonQuery();
            //    // SqlDataAdapter cdp = new SqlDataAdapter(query, conn);
            //   // cdp.SelectCommand.ExecuteNonQuery();
            //    conn.Close();
            //    MessageBox.Show("Data Added Successfully");
            //    DataTable dt = new DataTable();
            //    SqlDataAdapter adapter = new SqlDataAdapter("Select * from Rubric", conn);
            //    adapter.Fill(dt);
            //    dataGridViewRubrics.DataSource = dt;
            //    richTextBox1.Text = " ";

            //}
        }
//view data
        private void ManageRubrics_Load(object sender, EventArgs e)
        {
            conn.Open();
            DataTable dt = new DataTable();
            SqlDataAdapter ada = new SqlDataAdapter("Select * from Rubric", conn);
            ada.Fill(dt);
            dataGridViewRubrics.DataSource = dt;
            conn.Close();



            //
          //  var select = "SELECT * From Clo";
          //          SqlDataAdapter adapter = new SqlDataAdapter(select, conn);
            
          //  var ds = new DataSet();
          //adapter.Fill(ds);
          //  dataGridViewRubrics.ReadOnly = true;
          //  dataGridViewRubrics.DataSource = ds.Tables[0];
          //  comboBoxcloname.DataSource = ds.Tables[0];
          //  comboBoxcloname.DisplayMember = "Name";
          //  comboBoxcloname.DataSource = ds.Tables[0];
          //  comboBoxcloname.ValueMember = " Id";


            //  select = "SELECT Id, Name FROM Clo";
            // // var dataAdapter = new OleDbDataAdapter(select, connection);
            //// SqlDataAdapter adapter = new SqlDataAdapter(select, conn);
            // //var commandBuilder = new OleDbCommandBuilder(dataAdapter);
            // SqlCommandBuilder commandBuilder = new SqlCommandBuilder(adapter);
            //  ds = new DataSet();
            // adapter.Fill(ds);

            // comboBoxcloname.DataSource = ds.Tables[0];
            // comboBoxcloname.DisplayMember = " Name";
            // //   drpDownSaleManufacturer.DataSource = ds.Tables[0];
            // comboBoxcloname.ValueMember = " Id";
        }
/// <summary>
/// this code bind clo names in combobox which were added in ManageCLO form.
/// </summary>
/// <param name="sender"></param>
/// <param name="e"></param>
        private void ManageRubrics_BindingContextChanged(object sender, EventArgs e)
        {
            var select = "SELECT Id, Name FROM Clo";
            // var dataAdapter = new OleDbDataAdapter(select, connection);
            SqlDataAdapter adapter = new SqlDataAdapter(select, conn);
            //var commandBuilder = new OleDbCommandBuilder(dataAdapter);
            // SqlCommandBuilder commandBuilder = new SqlCommandBuilder(adapter);
            //var ds = new DataSet();
            // adapter.Fill(ds);

            // comboBoxcloname.DataSource = ds.Tables[0];
            // comboBoxcloname.DisplayMember = " Name";
            // //   drpDownSaleManufacturer.DataSource = ds.Tables[0];
            // comboBoxcloname.ValueMember = " Id";



            //
            //// Update the combobox of clo in Manage rubrics form
            //select = "SELECT * From Clo";
            //SqlDataAdapter ast = new SqlDataAdapter(select, conn);
            //SqlCommandBuilder comdbuilder = new SqlCommandBuilder(ast);
            //var ds = new DataSet();
            //ast.Fill(ds);

            //comboBoxcloname.DataSource = ds.Tables[0];
            //comboBoxcloname.DisplayMember = "Name";
            //comboBoxcloname.DataSource = ds.Tables[0];
            //comboBoxcloname.ValueMember = " Id";


            //
            //Fill the DataTable with records from Table.
            using (SqlDataAdapter sda = new SqlDataAdapter("SELECT Id, Name FROM Clo", conn))
            {
                //Fill the DataTable with records from Table.
                DataTable dt = new DataTable();
                sda.Fill(dt);

                //Insert the Default Item to DataTable.
                DataRow row = dt.NewRow();
                row[0] = 0;
                row[1] = "Please select";
                dt.Rows.InsertAt(row, 0);
                //comboBoxcloname
                //Assign DataTable as DataSource.
                comboBoxcloname.DataSource = dt;
                comboBoxcloname.DisplayMember = "Name";
                comboBoxcloname.ValueMember = "Id";

            }
        }

        private void comboBoxcloname_DropDownClosed(object sender, EventArgs e)
        {
          
        }

        private void dataGridViewRubrics_RowHeaderMouseDoubleClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            id = Convert.ToInt32(richTextBox1.Text = dataGridViewRubrics.Rows[e.RowIndex].Cells[0].Value.ToString());
            richTextBox1.Text = dataGridViewRubrics.Rows[e.RowIndex].Cells[1].Value.ToString();
            comboBoxcloname.Text =  dataGridViewRubrics.Rows[e.RowIndex].Cells[2].Value.ToString().ToString();

            //comboBoxcloname.Text = Convert.ToInt32(dataGridViewRubrics.Rows[e.RowIndex].Cells[2].Value.ToString()).ToString();

        }

        private void Home_Click(object sender, EventArgs e)
        {
            Dashboard s = new Dashboard();
            s.Show();
            this.Hide();
        }
//Delete query.

        private void btn_delerubrucs_Click(object sender, EventArgs e)
        {

            if (id != 0)

            {

                cmd = new SqlCommand("delete RubricLevel where RubricId=@id", conn);
                conn.Open();
                cmd.Parameters.AddWithValue("@id", id);
                cmd.ExecuteNonQuery();
                conn.Close();
                cmd = new SqlCommand("delete Rubric where Id=@id", conn);
                conn.Open();
                cmd.Parameters.AddWithValue("@id", id);
                cmd.ExecuteNonQuery();
                conn.Close();

                MessageBox.Show("Record Deleted Successfully!");
                DataTable dt = new DataTable();
                SqlDataAdapter adapter = new SqlDataAdapter("Select * from Rubric", conn);
                adapter.Fill(dt);
                dataGridViewRubrics.DataSource = dt;
                richTextBox1.Text = "";
                comboBoxcloname.Text = "";



            }
            else
            {
                MessageBox.Show("Please Select Record to Delete");
            }

        }
//Update rubric
        private void btn_updaterubrics_Click(object sender, EventArgs e)
        {
            if (comboBoxcloname.Text != "" && richTextBox1.Text != "" )   
            {
                conn.Open();
                string query="Update Rubric Set [CloId] = '" + comboBoxcloname.SelectedValue + "', [Details] ='" + richTextBox1.Text + "' where Id =@id";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@id", id);
                cmd.ExecuteNonQuery();
                MessageBox.Show("Updated Successfully!");
                conn.Close();


                DataTable dt = new DataTable();
                SqlDataAdapter adapter = new SqlDataAdapter("Select * from Rubric ", conn);
                adapter.Fill(dt);
                dataGridViewRubrics.DataSource = dt;
                comboBoxcloname.Text = "";
                richTextBox1.Text = "";

            }
            else
            {
                MessageBox.Show("Please Select the data from table to update ");
            }
        }

        private void dataGridViewRubrics_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            Rubric_Level r = new Rubric_Level();
            r.Show();
            this.Hide();
        }
    }
}
