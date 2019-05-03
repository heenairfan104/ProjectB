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
    public partial class Rubric_Level : Form
    {
        /// <summary>
        /// This form manage Rubric Level by performing crud operation on rubric.
        /// </summary>
        /// <remarks>
        /// Can add rubric,view rubric details,delete and update rubric level.Rubric level must be added against specific CLO name
        /// </remarks>
        /// <return>
        /// return the list of students in grid view</return>
        int id;
        public Rubric_Level()
        {
            InitializeComponent();
        }
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-4CTJEVU\SQLEXPRESS;Initial Catalog=ProjectB;Integrated Security=True");
       SqlCommand cmd;

        //insert query
        private void btn_Addrubriclevel_Click(object sender, EventArgs e)
        {
            if (comboBoxrubricid.Text != "" && richTextBoxleveldetails.Text != "" && comboBoxmeasurementlevel.Text != "")
            {
                conn.Open();
                string query = "insert into RubricLevel(RubricId,Details,MeasurementLevel) values ('" + comboBoxrubricid.SelectedValue + "','" + richTextBoxleveldetails.Text + "','" + comboBoxmeasurementlevel.SelectedIndex + "')";
                SqlDataAdapter adp = new SqlDataAdapter(query, conn);
                adp.SelectCommand.ExecuteNonQuery();
                conn.Close();
                MessageBox.Show("Data Added Successfully");
                DataTable dt = new DataTable();
                SqlDataAdapter adapter = new SqlDataAdapter("Select * from RubricLevel", conn);
                adapter.Fill(dt);
                dataGridViewRubricLevel.DataSource = dt;
                richTextBoxleveldetails.Text = " ";
                comboBoxmeasurementlevel.Text = " ";
                comboBoxrubricid.Text = "";
                 
            }
            else
            {
                MessageBox.Show("Please Provide complete information");
            }

        }
//view data.
        private void Rubric_Level_Load(object sender, EventArgs e)
        {
            conn.Open();
            DataTable dt = new DataTable();
            SqlDataAdapter ada = new SqlDataAdapter("Select * from RubricLevel", conn);
            ada.Fill(dt);
            dataGridViewRubricLevel.DataSource = dt;
            conn.Close();
        }

        private void dataGridViewRubricLevel_RowHeaderMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            id = Convert.ToInt32(richTextBoxleveldetails.Text = dataGridViewRubricLevel.Rows[e.RowIndex].Cells[0].Value.ToString());
            richTextBoxleveldetails.Text = dataGridViewRubricLevel.Rows[e.RowIndex].Cells[2].Value.ToString();

            comboBoxrubricid.Text =  dataGridViewRubricLevel.Rows[e.RowIndex].Cells[1].Value.ToString().ToString();
            comboBoxmeasurementlevel.Text = dataGridViewRubricLevel.Rows[e.RowIndex].Cells[3].Value.ToString().ToString();
        }

        private void Rubric_Level_BindingContextChanged(object sender, EventArgs e)
        {
            var select = "SELECT Id, Details FROM Rubric";
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
            using (SqlDataAdapter sda = new SqlDataAdapter("SELECT Id, Details FROM Rubric", conn))
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
                comboBoxrubricid.DataSource = dt;
                comboBoxrubricid.DisplayMember = "Id";
                comboBoxrubricid.ValueMember = "Id";

            }
        }

        private void btn_Deleterubriclevel_Click(object sender, EventArgs e)
        {
            //if (id != 0)

            //{

            //    cmd = new SqlCommand("delete RubricLevel where RubricId=@id", conn);
            //    conn.Open();
            //    cmd.Parameters.AddWithValue("@id", id);
            //    cmd.ExecuteNonQuery();
            //    conn.Close();
            //    //cmd = new SqlCommand("delete Rubric where Id=@id", conn);
            //    //conn.Open();
            //    //cmd.Parameters.AddWithValue("@id", id);
            //    //cmd.ExecuteNonQuery();
            //    //conn.Close();

            //    MessageBox.Show("Record Deleted Successfully!");
            //    DataTable dt = new DataTable();
            //    SqlDataAdapter adapter = new SqlDataAdapter("Select * from Rubriclevel ", conn);
            //    adapter.Fill(dt);
            //    dataGridViewRubricLevel.DataSource = dt;
            //    richTextBoxleveldetails.Text = "";
            //    comboBoxmeasurementlevel.Text = "";
            //    comboBoxrubricid.Text = "";

            //    id = 0;

            //}
            //else
            //{
            //    MessageBox.Show("Please Select Record to Delete");
            //}

            if (id != 0)

            {
                cmd = new SqlCommand("delete RubricLevel where Id=@id", conn);
                conn.Open();
                cmd.Parameters.AddWithValue("@id", id);
                cmd.ExecuteNonQuery();
                conn.Close();

                 
                MessageBox.Show("Deleted Successfully!");
                DataTable dt = new DataTable();
                SqlDataAdapter adapter = new SqlDataAdapter("Select * from RubricLevel", conn);
                adapter.Fill(dt);
                dataGridViewRubricLevel.DataSource = dt;
                richTextBoxleveldetails.Text = "";
                comboBoxmeasurementlevel.Text = "";
                comboBoxrubricid.Text = "";

                // id = 0;
            }
            else
            {
                MessageBox.Show("First Select Data from table which you want to Delete");
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Dashboard d = new Dashboard();
            d.Show();
            this.Hide();
        }

        private void btn_Updaterubriclevel_Click(object sender, EventArgs e)
        {
            if (comboBoxrubricid.Text != "" && comboBoxmeasurementlevel.Text != "" && richTextBoxleveldetails.Text != "" )   //&& txtregistrationNo.Text != "" && comboBoxstatus.Text != ""
            {
                conn.Open();
                SqlCommand command = new SqlCommand("Update RubricLevel set RubricId='" + comboBoxrubricid.SelectedValue + "', Details ='" +richTextBoxleveldetails.Text + "',MeasurementLevel = '" + comboBoxmeasurementlevel.SelectedIndex + "' where Id ='" + id + "'", conn);

                command.ExecuteNonQuery();
                MessageBox.Show("Updated Successfully");
                conn.Close();


                DataTable dt = new DataTable();
                SqlDataAdapter adapter = new SqlDataAdapter("Select * from RubricLevel", conn);
                adapter.Fill(dt);
                dataGridViewRubricLevel.DataSource = dt;
                comboBoxrubricid.Text = "";
                comboBoxmeasurementlevel.Text = "";
                richTextBoxleveldetails.Text = "";

            }
            else
            {
                MessageBox.Show("Please Select the row from table to update the data");
            }
        }
    }
}
