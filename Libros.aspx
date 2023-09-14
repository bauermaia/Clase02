<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Libros.aspx.cs" Inherits="Clase_02.Libros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Cargar.aspx">Cargar nuevos libros</asp:HyperLink>
        </div>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Listado.aspx">Ver listado de libros</asp:HyperLink>
    </form>
</body>
</html>
