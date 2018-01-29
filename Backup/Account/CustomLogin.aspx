<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomLogin.aspx.cs" Inherits="ASPNET.Account.CustomLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<script type="text/javascript">
    function setSize() {
        window.resizeTo(300, 300);
        document.body.style.overflow = 'hidden';
        window.moveTo(100, 100);
        window.focus();
    }
</script>
<head runat="server">
    <title></title>
    <link href="../CSS/Custom.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server" style="width: 500px; height: 300px">
    <div class="loginform">
        <div> 
            <asp:Label ID="Label1" runat="server" Text="Login"></asp:Label>
        </div>
        <div>
            <asp:TextBox ID="tbLogin" runat="server" Width="250px" CssClass="loginEntry"></asp:TextBox>
        </div>
        <div style="height: 20px">
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></div>
        <div>
            <asp:TextBox ID="tbPassword" runat="server" Width="250px" TextMode="Password" CssClass="passwordEntry"></asp:TextBox>
        </div>
        <div style="height: 40px">
        </div>
        <div style="left: 100px; float: left; width: 100px;">
            <asp:Button ID="btnOk" runat="server" Text="Ok" Width="50px" OnClick="btnOk_Click" />
        </div>
        <div style="width: 100px;">
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="50px" />
        </div>
        <div style="height: 20px">
        </div>
        <div>
            <asp:Label ID="laInfoMessage" runat="server" Text="" Visible="False"></asp:Label>
        </div>
    </div>
    </form>
</body>
</html>
