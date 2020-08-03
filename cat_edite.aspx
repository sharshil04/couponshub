<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cat_edite.aspx.cs" Inherits="cat_edite"  MasterPageFile="~/MasterPageadmin.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    
        <asp:Panel ID="edit" runat="server">
            <fieldset>
               
                <div class='container'><h2>Edit Category</h2></div>
                <br />
                <div class="container">
                <asp:GridView ID="dgv1" CssClass="table table-hover table-striped" OnRowCancelingEdit="dgv1_RowCancelingEdit" runat="server" AutoGenerateColumns="false" DataKeyNames="cid" OnRowDeleting="dgv1_RowDeleting" OnRowEditing="dgv1_RowEditing" OnRowUpdating="dgv1_RowUpdating">
                    <Columns>
                        <asp:TemplateField HeaderText="Category Name" ItemStyle-Width="150" >
                            <ItemTemplate>
                                <asp:Label ID="lblName" runat="server" Text='<%# Eval("cname") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("cname") %>' Width="140"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Category Description" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lblcid" runat="server" Text='<%# Eval("cdesc") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtcdesc" runat="server" Text='<%# Eval("cdesc") %>' Width="140"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true"
                            ItemStyle-Width="150" />
                    </Columns>

                </asp:GridView>
                    </div>


            </fieldset>
        </asp:Panel>

    </asp:Content>