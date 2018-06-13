using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tarea_5
{
    public partial class paginanueva : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            txtn.Text = Request.QueryString["nombre"];
            txtapellido.Text = Request.QueryString["apellido"];
            txtdirec.Text = Request.QueryString["direccion"];
            



        }

        protected void txtn_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtapellido_TextChanged(object sender, EventArgs e)
        {
          
        }
    }
}