<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Deals.aspx.cs" Inherits="Deals" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    <div class='container'><center><h2>Deals Of The Day</h2></center></div>
    <div class="container">
    <asp:GridView ID="GridView1" CssClass="table table-hover table-striped" runat="server" AutoGenerateColumns="false" >
        <Columns>
           <asp:TemplateField HeaderText="Store Name">
                <ItemTemplate>
                    <asp:Label runat="server" ID="lblstore" Text='<%#Eval("sname")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Coupon Title">
                <ItemTemplate>
                    <asp:Label runat="server" ID="lblctitle" Text='<%#Eval("co_title")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Discount in %">
                <ItemTemplate>
                    <asp:Label runat="server" ID="lblctitle" Text='<%#Eval("discount")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Coupon Code">
                <ItemTemplate>
                    <asp:Label runat="server" ID="lblccode" Text='<%#Eval("co_code")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
          <asp:TemplateField HeaderText="Expire Date">
                <ItemTemplate>
                    <asp:Label runat="server" ID="amt" Text='<%#Eval("co_expiredate")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>


        </Columns>


    </asp:GridView>

                    </div>


</asp:Content>

