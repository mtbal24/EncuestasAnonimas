using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EncuestasAnonimas
{
    public partial class ListaEncuestas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label3.Text = string.Empty;
            if (TextBox1.Text != string.Empty )
            {
                SqlDataSource1.FilterExpression = "id = " + TextBox1.Text;
            }
            else
            {
                Label3.Text = "Debe ingresar un ID";
            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataSource1.FilterExpression = "idPregunta = " + DropDownList1.SelectedValue;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
    }
}