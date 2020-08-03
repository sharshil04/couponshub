<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testing_datalist.aspx.cs" Inherits="testing_datalist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            margin-bottom: 0px;
            width: 443px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <asp:DataList ID="DataList1" runat="server" DataKeyField="sid" DataSourceID="SqlDataSource1" RepeatColumns="4" style="margin-left: 0px" >
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("logo") %>' />
&nbsp;<br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbtestConnectionString %>" ProviderName="<%$ ConnectionStrings:dbtestConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [mst_store]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
