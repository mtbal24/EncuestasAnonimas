<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="EncuestasAnonimas.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center" style="font-family:Arial; color:steelblue">
    <h1>ENCUESTAS ANONIMAS</h1>
</div>
        <div align="center" style="font-family:Arial; color:steelblue" >
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Preguntas.aspx">ABM Preguntas</asp:HyperLink>
    <br />
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Encuestas.aspx"> ABM Encuestas</asp:HyperLink>
    <br />
    <br />
<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ListaEncuestas.aspx">Ver Listado de Encuestas</asp:HyperLink>
</div>
    </form>
</body>
</html>
