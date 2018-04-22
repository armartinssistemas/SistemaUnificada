<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formUpAlunos.aspx.cs" Inherits="UploadFileLucas.formUpAlunos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="upFile" runat="server" />
        </div>
        <asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click" Text="Upload Arquivo" />
        <asp:Button ID="btnSalvarCadastro" runat="server" OnClick="btnSalvarCadastro_Click" Text="Salvar" />
        <p>
            <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="grid_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" />
                    <asp:BoundField DataField="ra" HeaderText="RA" />
                    <asp:BoundField DataField="nome" HeaderText="Nome" />
                    <asp:BoundField DataField="sobrenome" HeaderText="Sobrenome" />
                    <asp:BoundField DataField="cidade" HeaderText="Cidade" />
                    <asp:BoundField DataField="email" HeaderText="E-mail" />
                    <asp:BoundField DataField="disciplina" HeaderText="Disciplina" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
