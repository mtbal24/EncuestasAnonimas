<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListaEncuestas.aspx.cs" Inherits="EncuestasAnonimas.ListaEncuestas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Menu.aspx">Volver al Menu</asp:HyperLink>
<br />
<br />
            <div align="center" style="font-family:Arial; color:steelblue">
                <h2>RESULTADOS DE ENCUESTAS REALIZADAS</h2>
                <h2>&nbsp;</h2>
            </div>
            <br />
            <br />
            <div style="font-family:Arial; font-weight:bold; color:steelblue">

                &nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Buscar por ID Encuesta"></asp:Label>
&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Width="46px"></asp:TextBox>
&nbsp;

                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" />
                
                &nbsp;
                <asp:Button ID="Button4" runat="server" OnClick="Button3_Click" Text="Reset" Width="62px" />
&nbsp;
                <asp:Label ID="Label3" runat="server" Font-Size="Small" ForeColor="#FF0066"></asp:Label>
                
                <br />
                <br />
&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Buscar por Pregunta"></asp:Label>
&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceP" DataTextField="descripción" DataValueField="id" Height="26px" Width="587px">
                </asp:DropDownList>
&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Buscar" />

            &nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Reset" Width="62px" />
                <br />
                <br />
&nbsp;</div>
            <br />
            <br />
            <div align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="564px" DataKeyNames="id" DataSourceID="SqlDataSource1" Font-Names="Arial">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="ID ENCUESTA" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="descripción" HeaderText="PREGUNTA" SortExpression="descripción" />
                        <asp:BoundField DataField="valor" HeaderText="PUNTAJE" SortExpression="valor" />
                        <asp:BoundField DataField="idPregunta" HeaderText="idPregunta" SortExpression="idPregunta" Visible="False" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexion %>" DeleteCommand="DELETE FROM [Encuestas] WHERE [id] = @id" InsertCommand="INSERT INTO [Encuestas] ([idPregunta], [valor]) VALUES (@idPregunta, @valor)" SelectCommand="SELECT Encuestas.id, Encuestas.idPregunta, Encuestas.valor, Preguntas.descripción FROM Encuestas INNER JOIN Preguntas ON Encuestas.idPregunta = Preguntas.id" UpdateCommand="UPDATE [Encuestas] SET [idPregunta] = @idPregunta, [valor] = @valor WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="idPregunta" Type="Int32" />
                        <asp:Parameter Name="valor" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="idPregunta" Type="Int32" />
                        <asp:Parameter Name="valor" Type="Int32" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSourceP" runat="server" ConnectionString="<%$ ConnectionStrings:conexion %>" SelectCommand="SELECT * FROM [Preguntas]"></asp:SqlDataSource>
                <br />
            </div>
        </div>
    </form>
</body>
</html>
