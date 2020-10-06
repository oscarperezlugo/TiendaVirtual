using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TiendaVirtual.Conexion;

namespace TiendaVirtual
{
    public partial class Bolivares : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string search = Request.Cookies["search"].Value;
            SqlConnection con = new SqlConnection("workstation id=PaladarMobile.mssql.somee.com;packet size=4096;user id=paladarmobile_SQLLogin_1;pwd=evkj2c9yj5;data source=PaladarMobile.mssql.somee.com;persist security info=False;initial catalog=PaladarMobile");
            SqlDataAdapter sda = new SqlDataAdapter("select * from Producto", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (search != null)
            {
                
                DataTable dtResult = dt.Select("Producto LIKE '%" + search + "%'").CopyToDataTable();
                ListView1.DataSource = dtResult;
            }
            else
            {
                
                ListView1.DataSource = dt;
                
            }
            ListView1.DataBind();

        }
    }
}