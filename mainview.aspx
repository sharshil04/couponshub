<%@ Page Language="C#"MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="mainview.aspx.cs" Inherits="mainview" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<body>
    
        <div class="container">
            
            <asp:DataList ID="DataList1" runat="server" CssClass="auto-style3" DataKeyField="sid" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style2">
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("logo") %>' />
                            </td>
                            <td class="auto-style3">
                                <asp:Label ID="lblsnm" runat="server" CssClass="auto-style4" Font-Size="X-Large" ForeColor="#333300" Text='<%# Eval("sname") %>'></asp:Label>
                                &nbsp;<span class="auto-style4">Coupons</span></td>
                        </tr>
                    </table>
                    <br />
                </ItemTemplate>
            </asp:DataList>
            
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbtestConnectionString2 %>" ProviderName="<%$ ConnectionStrings:dbtestConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [mst_store] WHERE ([sid] = ?)">
            <SelectParameters>
                <asp:QueryStringParameter Name="sid" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:connectionstring_coupon %>" ProviderName="<%$ ConnectionStrings:connectionstring_coupon.ProviderName %>" SelectCommand="SELECT * FROM [mst_cou] WHERE ([sid] = ?)">
            <SelectParameters>
                <asp:QueryStringParameter Name="sid" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        
         <hr />
        <asp:DataList ID="dlcoupon" runat="server" DataKeyField="co_id" DataSourceID="SqlDataSource2" Height="746px" Width="1569px">
            <ItemTemplate>
               coupon title :
                <asp:Label ID="co_titleLabel" runat="server" Text='<%# Eval("co_title") %>' />
                <br />
                coupon code :
                <asp:Label ID="co_codeLabel" runat="server" Text='<%# Eval("co_code") %>' />
                <br />
                coupon description :
                <asp:Label ID="co_descLabel" runat="server" Text='<%# Eval("co_desc") %>' />
                <br />
                coupon expiredate:
                <asp:Label ID="co_expiredateLabel" runat="server" Text='<%# Eval("co_expiredate") %>' />
                </ItemTemplate>
        </asp:DataList>
   </div>

    </asp:Content>