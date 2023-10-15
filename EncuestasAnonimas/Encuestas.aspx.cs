using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EncuestasAnonimas
{
    public partial class Encuestas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Agregar_Click(object sender, EventArgs e)
        {
            try
            {
                //SqlDataSource1.InsertParameters["nombreCategoria"].DefaultValue = TextBox1.Text;
                int result = SqlDataSourceCrudE.Insert();
                if (result > 0)
                {
                    Label1.Text = "Encuesta registrada exitosamente";
                    GridView1.DataBind();
                }
                else
                {
                    Label1.Text = "No se pudo registrar la encuesta.";
                }
            }
            catch (SqlException)
            {
                Label1.Text = "Por favor inserte todos los datos";
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label4.Text = GridView1.SelectedRow.Cells[0].Text;
            DropDownList2.SelectedValue = GridView1.SelectedRow.Cells[1].Text;
            TextBox3.Text= GridView1.SelectedRow.Cells[3].Text;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSourceCrudE.Update();
        }
    }
}