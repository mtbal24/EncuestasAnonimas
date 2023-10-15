<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Encuestas.aspx.cs" Inherits="EncuestasAnonimas.Encuestas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family:Arial; color:darkgreen; font-weight:bold">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Menu.aspx">Volver al Menu</asp:HyperLink>
            <br />
            <br />
            <div align="center" style="font-family:Arial; color:darkgreen">
    <h2>GESTION DE ENCUESTAS</h2>
</div>
&nbsp;
            <asp:Label ID="LabelPreguntas" runat="server" Text="Preguntas Disponibles"></asp:Label>
&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceP" DataTextField="descripción" DataValueField="id" Height="26px" Width="435px">
            </asp:DropDownList>
&nbsp;
            <asp:Label ID="Puntaje" runat="server" Text="Valor Puntaje"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="30px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Agregar" runat="server" OnClick="Agregar_Click" Text="Generar Encuesta" />
            <br />
            <br />
&nbsp;
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
&nbsp;
            <asp:Label ID="EncSelected" runat="server" Text="Encuesta Seleccionada: "></asp:Label>
            <br />
            <br />
&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Id Encuesta"></asp:Label>
&nbsp;&nbsp;<asp:Label ID="Label4" runat="server"></asp:Label>
&nbsp;<asp:Label ID="Label3" runat="server" Text="Pregunta: "></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSourceP" DataTextField="descripción" DataValueField="id">
            </asp:DropDownList>
            &nbsp;&nbsp;
            <asp:Label ID="PuntajeEdit" runat="server" Text="Puntaje: "></asp:Label>
&nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="43px"></asp:TextBox>
&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Modificar Encuesta" />
            <br />
&nbsp;<br />
            <div align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSourceCrudE" Width="791px" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="id" HeaderText="ID Encuesta" InsertVisible="False" ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="idPregunta" SortExpression="idPregunta" />
        <asp:BoundField DataField="descripción" HeaderText="Pregunta" SortExpression="descripción" />
        <asp:BoundField DataField="valor" HeaderText="Puntaje" SortExpression="valor" />
        <asp:CommandField ShowSelectButton="True" ButtonType="Button" HeaderText="Acciones" ShowDeleteButton="True" />
    </Columns>
    <EditRowStyle BackColor="#7C6F57" />
    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#E3EAEB" />
    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F8FAFA" />
    <SortedAscendingHeaderStyle BackColor="#246B61" />
    <SortedDescendingCellStyle BackColor="#D4DFE1" />
    <SortedDescendingHeaderStyle BackColor="#15524A" />
</asp:GridView>
            </div>
            
        </div>
        <asp:SqlDataSource ID="SqlDataSourceCrudE" runat="server" ConnectionString="<%$ ConnectionStrings:conexion %>" DeleteCommand="DELETE FROM [Encuestas] WHERE [id] = @id" InsertCommand="INSERT INTO [Encuestas] ([idPregunta], [valor]) VALUES (@idPregunta, @valor)" SelectCommand="SELECT Encuestas.id, Encuestas.idPregunta, Encuestas.valor, Preguntas.descripción FROM Encuestas INNER JOIN Preguntas ON Encuestas.idPregunta = Preguntas.id" UpdateCommand="UPDATE [Encuestas] SET [idPregunta] = @idPregunta, [valor] = @valor WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="idPregunta" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="TextBox1" Name="valor" PropertyName="Text" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="idPregunta" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="TextBox3" Name="valor" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="GridView1" Name="id" PropertyName="SelectedValue" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceP" runat="server" ConnectionString="<%$ ConnectionStrings:conexion %>" SelectCommand="SELECT * FROM [Preguntas]"></asp:SqlDataSource>
    </form>
</body>
</html>
