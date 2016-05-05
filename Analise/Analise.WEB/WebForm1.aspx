<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Analise.WEB.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:GridView ID="gdvResponsaveis" runat="server" Caption="Responsaveis Legais" 
            AutoGenerateColumns="False" CssClass="FichaCadastral">
            <Columns>
                <asp:BoundField DataField="Nome" HeaderText="Nome" >
                <HeaderStyle BackColor="#E4E4E4" BorderColor="Silver" BorderStyle="Solid" />
                <ItemStyle BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" />
                </asp:BoundField>
                <asp:BoundField DataField="RG" HeaderText="RG" />
                <asp:BoundField DataField="CPF" HeaderText="CPF" />
                <asp:BoundField DataField="EstadoCivil" HeaderText="Estado Civil" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
