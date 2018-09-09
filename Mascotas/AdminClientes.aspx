<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminClientes.aspx.cs" Inherits="Mascotas.AdminClientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Identificacion del cliente"></asp:Label>
                <asp:TextBox ID="Txtid" runat="server" Width="176px" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RqvIdentcliente" runat="server" ErrorMessage="Campo Requerido" ControlToValidate ="Txtid" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
             <div class="form-group">
                 <asp:Label ID="Label2" runat="server" Text="Nombres y apellidos"></asp:Label>
                <asp:TextBox ID="Txtname" runat="server" Width="176px" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="Rqvname" runat="server" ErrorMessage="Campo Requerido" ControlToValidate ="Txtname" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
             <div class="form-group">
                 <asp:Button ID="Btnsave" runat="server" Text="Guardar"  CssClass="btn btn-primary" OnClick="Btnsave_Click"/>
                 <asp:Button ID="ButtonDelete" runat="server" Text="Eliminar"  CssClass="btn btn-danger"/>
              
            </div>
        </div>
    </form>
</body>
</html>
