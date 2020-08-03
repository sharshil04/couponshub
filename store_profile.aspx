<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagestore.master" AutoEventWireup="true" CodeFile="store_profile.aspx.cs" Inherits="store_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <h3> <asp:Label ID="lblprofile" runat="server" Text=" Profile"></asp:Label></h3>

  
    <asp:DataList ID="dlpro" runat="server" DataSourceID="SqlDataSource1"  CellSpacing = "3" DataKeyField="sid">
    <ItemTemplate>
        <br />
        <table class = "table" border="0">
            <tr>
                <th colspan="2">
                     <asp:Image ID="imgbtn" runat="server" ImageUrl='<%# Eval("logo") %>'   />

                    
                </th>
            </tr>
            <tr>
                <th>
                    <div  class='container'>
                    <asp:Label ID="lblsnm" runat="server" Text=" Name :" CssClass="label" /><br />
                
                
                    <asp:TextBox ReadOnly="true"  ID="txtsnm" runat="server" Text='<%# Eval("sname") %>'  />
                        </div>
                </th>
            </tr>
            <tr>
                <th>
                    <div  class='container'>
                    <asp:Label ID="lblsemail" runat="server" Text=" Email :" CssClass="label" />
                <br />
                
                    <asp:TextBox ReadOnly="true" ID="txtsemail" runat="server" Text='<%# Eval("semail") %>' />
                        </div>
                </th>
            </tr>
            <tr>
                <th>
                    <div  class='container'>
                    <asp:Label ID="lblspwd" runat="server" Text=" Password :" CssClass="label" />
                <br />
                
                    <asp:TextBox ID="txtspwd" ReadOnly="true" runat="server" Text='<%# Eval("spwd") %>' />
                        </div>
                </th>
            </tr>
            <tr>
                <th>
                    <div  class='container'>
                    <asp:Label ID="lbl" runat="server" Text=" Url :" CssClass="label" />
                <br />
                
                    <asp:TextBox ID="txturl" runat="server" ReadOnly="true" Text='<%# Eval("url") %>' />
                        </div>
                </th>
            </tr>
            <tr>
                <td>
                <asp:Button ID="Btnupdate" runat="server" Text="Update" OnClick="Btnupdate_Click" class="btn btn-success"/>
                &nbsp&nbsp
                    <asp:Button ID="Btnclear" runat="server" Text="Cancel" OnClick="Btnclear_Click" class="btn btn-success"/>
                </td>

            </tr>
        </table>    
    </ItemTemplate>
</asp:DataList>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbtestConnectionString2 %>" ProviderName="<%$ ConnectionStrings:dbtestConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [mst_store] WHERE ([sid] = ?)">
        <SelectParameters>
            <asp:SessionParameter Name="sid" SessionField="sid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

        </div>

</asp:Content>

