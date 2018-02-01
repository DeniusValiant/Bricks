<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="PopUpWindow._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        var newWindow;

        function LoadModalDiv() {
            var bcgDiv = document.getElementById("divBackground");
            bcgDiv.style.display = "block";
        }

        function HideModalDiv() {
            var bcgDiv = document.getElementById("divBackground");
            bcgDiv.style.display = "none";
        }

        function AdjustLoginWindow() {
            // Fixes dual-screen position   Most browsers      Firefox
            var dualScreenLeft = window.screenLeft != undefined ? window.screenLeft : screen.left;
            var dualScreenTop = window.screenTop != undefined ? window.screenTop : screen.top;

            var width = window.innerWidth ? window.innerWidth : document.documentElement.clientWidth ? document.documentElement.clientWidth : screen.width;
            var height = window.innerHeight ? window.innerHeight : document.documentElement.clientHeight ? document.documentElement.clientHeight : screen.height;

            var left = ((width / 2) - (500 / 2)) + dualScreenLeft;
            var top = ((height / 2) - (500 / 2)) + dualScreenTop;

            var settings = 'scrollbars=yes, width=' + 500 + ', height=' + 500 + ', top=' + top + ', left=' + left;

            newWindow = window.open('Popup.aspx', '_blank', settings);
            window.focus();
            LoadModalDiv();
        }

        function OnUnload() {
            if (newWindow.closed == false) {
                newWindow.close();
            }
        }
        window.onunload = OnUnload;
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div onclick="AdjustLoginWindow()">
            Open popup window.
        </div>
    </form>
    <div id="divBackground" style="position: fixed; z-index: 999; height: 100%; width: 100%; top: 0; left: 0; background-color: Black; filter: alpha(opacity=60); opacity: 0.6; -moz-opacity: 0.8; display: none">
    </div>
</body>
</html>
