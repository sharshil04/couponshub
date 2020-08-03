        <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style2">
      <center><h3 class="wc-hmH3">Top Feature Store</h3></center>
           <center> <asp:DataList ID="DataList1" runat="server" DataKeyField="sid" DataSourceID="SqlDataSource1" RepeatColumns="4" style="margin-left: 0px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged1" OnItemCommand="DataList1_ItemCommand" >
                <ItemTemplate>
                    
                   <%--<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("logo") %>' />--%>
&nbsp;<br />
                    <asp:ImageButton ID="imgbtn" runat="server" ImageUrl='<%# Eval("logo") %>' CommandName="imgselect" CommandArgument='<%# Eval("sid") %>'  />
                    <br />
                </ItemTemplate>
            </asp:DataList></center>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbtestConnectionString %>" ProviderName="<%$ ConnectionStrings:dbtestConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [mst_store]"></asp:SqlDataSource>
        </div>


    
    


</asp:Content>
 
