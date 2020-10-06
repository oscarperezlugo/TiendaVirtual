using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TiendaVirtual
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }        
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (Contraseña.Value.ToString() == Repetir.Value.ToString())
            {

                using (SqlConnection openCon = new SqlConnection("workstation id=PaladarMobile.mssql.somee.com;packet size=4096;user id=paladarmobile_SQLLogin_1;pwd=evkj2c9yj5;data source=PaladarMobile.mssql.somee.com;persist security info=False;initial catalog=PaladarMobile"))
                {
                    string saveStaff = "INSERT into Clientes (Nombre, Apellido, Correo, Telefono, Direccion, FechaRegistro, Contrasena, iDCliente) VALUES (@Nombre, @Apellido, @Correo, @Telefono, @Direccion, @FechaRegistro, @Contrasena, @iDCliente)";

                    using (SqlCommand querySaveStaff = new SqlCommand(saveStaff))
                    {
                        querySaveStaff.Connection = openCon;
                        querySaveStaff.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = Nombre.Value.ToString();
                        querySaveStaff.Parameters.Add("@Apellido", SqlDbType.VarChar).Value = Apellido.Value.ToString();
                        querySaveStaff.Parameters.Add("@Correo", SqlDbType.VarChar).Value = Correo.Value.ToString();
                        querySaveStaff.Parameters.Add("@Telefono", SqlDbType.VarChar).Value = Telefono.Value.ToString();
                        querySaveStaff.Parameters.Add("@Direccion", SqlDbType.VarChar).Value = Dirección.Value.ToString();
                        querySaveStaff.Parameters.Add("@FechaRegistro", SqlDbType.DateTime).Value = DateTime.Now;
                        querySaveStaff.Parameters.Add("@Contrasena", SqlDbType.VarChar).Value = Contraseña.Value.ToString();
                        querySaveStaff.Parameters.Add("@iDCliente", SqlDbType.UniqueIdentifier).Value = System.Guid.NewGuid();
                        try
                        {
                            openCon.Open();
                            querySaveStaff.ExecuteNonQuery();
                            openCon.Close();
                            Response.Write("<script>alert('BIENVENIDO A BODEGÓN PALADAR')</script>");
                        }
                        catch (SqlException ex)
                        {
                            Response.Write("Error" + ex);
                        }
                    }
                }

            }
            else
            {
                Response.Write("<script>alert('LAS CONTRASEÑAS NO COINCIDEN')</script>");
            }
        }
    }
}