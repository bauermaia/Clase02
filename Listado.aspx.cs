using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clase_02
{
    public partial class Listado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(File.Exists(Server.MapPath(".") + "/archivo.txt")) {
                StreamReader Reader = new StreamReader(Server.MapPath(".") + "/archivo.txt");
               string[] lines = (Reader.ReadToEnd()).Split( '\n' );
                Reader.Close();
                lblListado.Text = "<hr>";
                int contador = 0;

                foreach(string line in lines )
                {
                    contador++;
                    if (contador%3==0)
                    {
                        lblListado.Text += $"{line} </br>";
                        lblListado.Text += "<hr>";
                    }
                    else
                    {
                        lblListado.Text += $"{line} </br>";
                    }
                    
                }
            }
            else
            {
                lblListado.Text="No existen datos";
            }
            
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Libros.aspx");
        }
    }
}