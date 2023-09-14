<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cargar.aspx.cs" Inherits="Clase_02.Cargar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Cargar nuevo libro</div>
        Nombre:
        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        <p>
            Autor:<asp:TextBox ID="txtAutor" runat="server"></asp:TextBox>
        </p>
        Genero:
        <asp:ListBox ID="lbGenero" runat="server" Height="26px" Width="190px">
            <asp:ListItem>Terror</asp:ListItem>
            <asp:ListItem>Miserio</asp:ListItem>
            <asp:ListItem>Infantil</asp:ListItem>
            <asp:ListItem>Comedia</asp:ListItem>
            <asp:ListItem>Poesía</asp:ListItem>
            <asp:ListItem>Romance</asp:ListItem>
        </asp:ListBox>
        <p>
            <asp:Button ID="btnGuardar" runat="server" OnClick="btnGuardar_Click" Text="Guardar" />
        </p>
        <p>
            <asp:Label ID="lblResultado" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Button ID="btnVolver" runat="server" OnClick="btnVolver_Click" Text="Volver" />
        </p>
    </form>
</body>
</html>
