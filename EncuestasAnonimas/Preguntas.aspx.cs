using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EncuestasAnonimas
{
    public partial class Preguntas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            try
            {
                //SqlDataSource1.InsertParameters["nombreCategoria"].DefaultValue = TextBox1.Text;
                int result = SqlDataSourceCrud.Insert();
                if (result > 0)
                {
                    Label1.Text = "Se agrego la pregunta: '" + TextBox1.Text+"'" ;
                    GridView1.DataBind();
                    TextBox1.Text = string.Empty ;
                }
                else
                {
                    Label1.Text = "No se pudo agregar el resgistro.";
                }
            }
            catch (SqlException)
            {
                Label1.Text = "Por favor inserte una descripción";
            }
        }

       
    }
}