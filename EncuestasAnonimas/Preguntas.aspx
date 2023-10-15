<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Preguntas.aspx.cs" Inherits="EncuestasAnonimas.Preguntas" %>

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
                        <div align="center" style="font-family:Arial; color:darkblue">
    <h2>GESTION DE PREGUNTAS</h2>
</div>
                        <asp:TextBox ID="TextBox1" runat="server" Width="302px" OnTextChanged="Page_Load"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insertar Pregunta" Width="229px" />
&nbsp;
            <asp:Label ID="Label1" runat="server" ForeColor="#6600FF"></asp:Label>
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSourceCrud" runat="server" ConnectionString="<%$ ConnectionStrings:conexion %>" DeleteCommand="DELETE FROM [Preguntas] WHERE [id] = @id" InsertCommand="INSERT INTO [Preguntas] ([descripción]) VALUES (@descripción)" SelectCommand="SELECT * FROM [Preguntas]" UpdateCommand="UPDATE [Preguntas] SET [descripción] = @descripción WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="descripción" PropertyName="Text" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="descripción" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <div align="center">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSourceCrud" GridLines="Vertical" Width="892px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="descripción" HeaderText="DESCRIPCION" SortExpression="descripción" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" HeaderText="ACCIONES" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>

            </div>
        </div>
    </form>
</body>
</html>
