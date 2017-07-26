using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace sae.Class
{
    public class autenticar
    {
        public static bool logon(string usuario, string password)
        {
            //consulta a la base de datos
            string sql = @"SELECT COUNT(*)
                          FROM sae1100
                          WHERE login_usu = @user AND pass_usu = @pass";
            //cadena conexion
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["sae_dbConnectionString"].ToString()))
            {
                conn.Open();//abrimos conexion

                SqlCommand cmd = new SqlCommand(sql, conn); //ejecutamos la instruccion
                cmd.Parameters.AddWithValue("@user", usuario); //enviamos los parametros
                cmd.Parameters.AddWithValue("@pass", password);

                int count = Convert.ToInt32(cmd.ExecuteScalar()); //devuelve la fila afectada
                conn.Close();//cerramos conexion
                if (count == 0)
                    return false;
                else
                    return true;

            }
        }
    }
}