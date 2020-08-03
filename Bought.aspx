<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Bought.aspx.cs" Inherits="Bought" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class='container'><center><h2>Your Gift card</h2></center></div>
    <asp:GridView ID="GridView1" CssClass="table table-hover table-striped" runat="server" AutoGenerateColumns="false" >
        <Columns>
            <asp:TemplateField HeaderText="GiftCard Id">
                <ItemTemplate>
                    <asp:Label runat="server" ID="tid" Text='<%#Eval("gid")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Store Name">
                <ItemTemplate>
                    <asp:Label runat="server" ID="cname" Text='<%#Eval("sname")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Gift Code">
                <ItemTemplate>
                    <asp:Label runat="server" ID="cemail" Text='<%#Eval("gcode")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
          <asp:TemplateField HeaderText="Amount">
                <ItemTemplate>
                    <asp:Label runat="server" ID="amt" Text='<%#Eval("gamount")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Expire Date">
                <ItemTemplate>
                    <asp:Label runat="server" ID="amt" Text='<%#Eval("expire")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>


        </Columns>


    </asp:GridView>

        </div>


</asp:Content>

