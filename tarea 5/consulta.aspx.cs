using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tarea_5
{
    public partial class consulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand="select u_id as 'ID', nombre as 'Nombre', apellido as 'Apellido', direccion as 'Direccion' from usuario where " +ddlb.SelectedValue + " like '%" + txtb.Text + "%'";
            SqlDataSource1.DataBind();
        }

        protected void gvm_SelectedIndexChanged(object sender, EventArgs e)
        {
            string nombre = gvm.SelectedRow.Cells[2].Text;
            string apellido = gvm.SelectedRow.Cells[3].Text;
            string direcc = gvm.SelectedRow.Cells[4].Text;
            Response.Redirect("paginanueva.aspx?nombre="+nombre+"&apellido="+apellido+"&direccion="+direcc+"");
            
            

        }
    }
}