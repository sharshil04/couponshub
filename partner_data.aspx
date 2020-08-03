<%@ Page Language="C#" AutoEventWireup="true" CodeFile="partner_data.aspx.cs" Inherits="partner_data" MasterPageFile="~/MasterPageadmin.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
       <div class='container'><h2>Partner Data</h2></div>
        <br />
        <div class="container">
        <asp:GridView ID="dgvpartner" CssClass="table table-hover table-striped" OnRowCancelingEdit="dgvpartner_RowCancelingEdit" ShowHeaderWhenEmpty="true" EmptyDataText="No Data Found" runat="server" AutoGenerateColumns="false" DataKeyNames="sid" OnRowDeleting="dgvpartner_RowDeleting" OnRowEditing="dgvpartner_RowEditing" OnRowUpdating="dgvpartner_RowUpdating">


            <Columns>
                <asp:TemplateField HeaderText="Store Name" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblName" runat="server" Text='<%# Eval("sname") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtname" runat="server" Text='<%# Eval("sname") %>' Width="140"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Email" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblsmail" runat="server" Text='<%# Eval("semail") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtsmail" runat="server" Text='<%# Eval("semail") %>' Width="140"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Url" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblsurl" runat="server" Text='<%# Eval("url") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtsurl" runat="server" Text='<%# Eval("url") %>' Width="140"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true"
                    ItemStyle-Width="150" />
            </Columns>



        </asp:GridView>
            </div>
</asp:Content>


