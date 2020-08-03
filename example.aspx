<%@ Page Language="C#" AutoEventWireup="true" CodeFile="example.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.7.1.js"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery.mobile-1.3.2/demos/js/jquery.mobile-1.3.2.min.js"></script>
    <link href=".https://ajax.aspnetcdn.com/ajax/jQuery/jquery.mobile-1.3.2.css" rel="stylesheet" />
    <script type="text/javascript">
        $(function () {
            $(".DetailSpan").click(function () {
                window.location.href = "WebForm1.aspx?id=" + $(this).attr("detailId");
            });
        })
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ListView ID="ListView1" runat="server">
            <LayoutTemplate>
                <ul data-role="listview" >
                     <asp:PlaceHolder runat="server" ID="itemPlaceholder" />
                </ul>
            </LayoutTemplate>
            <ItemTemplate>
                <li>
                     <a href="#">
                         <span class="DetailSpan" detailId="1">Details</span>
                        <img src="log/ajio.png">
                        <h2>tEST</h2>
                        <p>TEST</p>
                     </a>
                &nbsp;</li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul data-role="listview" >
                     <asp:PlaceHolder runat="server" ID="itemPlaceholder" />
                </ul>
            </LayoutTemplate>
            <ItemTemplate>
                <li>
                     <a href="#">
                         <span class="DetailSpan" detailId="1">Details</span>
                        <img src="log/ajio.png">
                        <h2>tEST</h2>
                        <p>TEST</p>
                     </a>
                &nbsp;</li>
            </ItemTemplate>
        </asp:ListView>
    </div>
    </form>
</body>
</html>
