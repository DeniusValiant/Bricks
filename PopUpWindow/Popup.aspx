<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Popup.aspx.cs" Inherits="PopUpWindow.Popup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function OnClose() {
            if (window.opener != null && !window.opener.closed) {
                window.opener.HideModalDiv();
                alert('1');
            }
        }
        window.onunload = OnClose;
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div >
        </div>
    </form>
</body>
</html>
