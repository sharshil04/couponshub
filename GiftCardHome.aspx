<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GiftCardHome.aspx.cs" Inherits="GiftCardHomeaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <script>
        function ChangeQ(ele,w) {
            var sign = ele.id.substring(15);
            if (w == "M") {

                document.getElementById("txtQ" + sign).value -= 1;
            }
            else if (w == "P") {
                document.getElementById("txtQ" + sign).value = parseInt(document.getElementById("txtQ" + sign).value,10) +  1;
            }
        }
</script>
      <div class='container'><center><h2>Order Gift Card</h2></center></div>
    </br>

    <div class="container"">
    <asp:GridView ID="GridView1" CssClass="table table-hover table-striped" runat="server" AutoGenerateColumns="false" OnRowCommand="GridView1_RowCommand">
                        <Columns>
                            <asp:TemplateField HeaderText="Id">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="gid" Text='<%#Eval("gid")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="sname" Text='<%#Eval("sname")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Amount">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="gamount" Text='<%#Eval("gamount")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Description">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="desc" Text='<%#Eval("desc")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Expire Date">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="expire" Text='<%#Eval("expire")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                            <asp:TemplateField HeaderText="Quantity" Visible="false">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="qty" Text='<%#Eval("qty")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                            <asp:TemplateField HeaderText="">
                        <ItemTemplate>
                            <asp:Button ID="btnbuy" runat="server" Text="Buy" CommandName="Select" CommandArgument="<%# Container.DataItemIndex %>" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                </Columns>
                

    </asp:GridView>

        </div>
      


</asp:Content>

