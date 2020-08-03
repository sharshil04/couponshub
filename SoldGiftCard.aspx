<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagestore.master" AutoEventWireup="true" CodeFile="SoldGiftCard.aspx.cs" Inherits="SoldGiftCard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        </br>
       <h3> <center><asp:Label ID="lblsoldgc" runat="server" Text="Sold Gift Cards"></asp:Label></center></h3>
        </br>



    <asp:GridView ID="GridView1" CssClass="table table-hover table-striped" runat="server" AutoGenerateColumns="false" OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:TemplateField HeaderText="Transection Id">
                <ItemTemplate>
                    <asp:Label runat="server" ID="tid" Text='<%#Eval("tid")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Customer Name">
                <ItemTemplate>
                    <asp:Label runat="server" ID="cname" Text='<%#Eval("cname")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Customer Email">
                <ItemTemplate>
                    <asp:Label runat="server" ID="cemail" Text='<%#Eval("cemail")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
          <asp:TemplateField HeaderText="Amount">
                <ItemTemplate>
                    <asp:Label runat="server" ID="amt" Text='<%#Eval("gamount")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>


        </Columns>


    </asp:GridView>

        </div>


</asp:Content>

