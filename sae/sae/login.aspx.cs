using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using sae.Data;
using sae.Data.DS1100TableAdapters;
using sae.Class;


namespace sae
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void iniciarBtb_Click(object sender, EventArgs e)
        {
            if (autenticar.logon(usuarioTxt.Text, passTxt.Text))
            {
                alerta1.Text = "entro";
                Response.Redirect("default.aspx");

            }
            else
            {

                MsgBox("Usuario o Contraseña Incorrecto!!!. Intente otra vez");
            }
        }

        public void MsgBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "Message Box", "<script language='javascript'>alert('" + msg + "')</script>");
        }

    }
}