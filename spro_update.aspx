<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagestore.master" AutoEventWireup="true" CodeFile="spro_update.aspx.cs" Inherits="spro_update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
    <table class = "table" border="0">
            <tr>
                <th colspan="2">
                     <asp:Image ID="imgbtn" runat="server"  />

                    
                </th>
            </tr>
            <tr>
                <th>
                    <div  class='container'>
                    <asp:Label ID="lblsnm" runat="server" Text=" Name :" CssClass="label" /><br />
                
                
                    <asp:TextBox   ID="txtsnm" runat="server" Text=""  />
                        </div>
                </th>
            </tr>
            <tr>
                <th>
                    <div  class='container'>
                    <asp:Label ID="lblsemail" runat="server" Text=" Email :" CssClass="label" />
                <br />
                
                    <asp:TextBox  ID="txtsemail" runat="server" Text="" />
                        </div>
                </th>
            </tr>
            <tr>
                <th>
                    <div  class='container'>
                    <asp:Label ID="lblspwd" runat="server" Text=" Password :" CssClass="label" />
                <br />
                
                    <asp:TextBox ID="txtspwd"  runat="server" Text="" />
                        </div>
                </th>
            </tr>
            <tr>
                <th>
                    <div  class='container'>
                    <asp:Label ID="lbl" runat="server" Text=" Url :" CssClass="label" />
                <br />
                
                    <asp:TextBox ID="txturl" runat="server" Text="" />
                        </div>
                </th>
            </tr>
            <tr>
                <td>
                <asp:Button ID="Btnupdate" runat="server" Text="Update"  OnClick="Btnupdate_Click" class="btn btn-success"/>
                &nbsp&nbsp
                    <asp:Button ID="Btnclear" runat="server" Text="Cancel" OnClick="Btnclear_Click" class="btn btn-success"/>
                </td>

            </tr>
        </table>
        </div>

</asp:Content>

