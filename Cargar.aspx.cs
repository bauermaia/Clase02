using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clase_02
{
    public partial class Cargar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Libros.aspx");
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            StreamWriter writer = new StreamWriter($"{Server.MapPath(".")}/archivo.txt",true);
            writer.WriteLine("Nombre: "+txtNombre.Text);
            writer.WriteLine("Autor: "+txtAutor.Text);
            writer.WriteLine("Género: "+lbGenero.Text);
            writer.Close();
            lblResultado.Text = $"Se agregó el libro al listado. Ruta de archivo.txt{Server.MapPath(".")}.";
        }
    }
}