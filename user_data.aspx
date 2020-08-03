<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_data.aspx.cs" Inherits="user_data" MasterPageFile="~/MasterPageadmin.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
   
            <div class='container'><h2>User Data</h2></div>
            <br />
        <div class="container">
             <asp:GridView ID="dgvuser" runat="server" CssClass="table table-hover table-striped" ShowHeaderWhenEmpty="true" EmptyDataText="No Data Found" AutoGenerateColumns="False" DataKeyNames="cid" OnRowDeleting="dgvuser_RowDeleting" OnRowEditing="dgvuser_RowEditing" OnRowUpdating="dgvuser_RowUpdating" OnRowCancelingEdit="dgvuser_RowCancelingEdit">

                 <Columns>
          <asp:TemplateField HeaderText="Customer Name" ItemStyle-Width="150">
           <ItemTemplate>
                        <asp:Label ID="lblName" runat="server" Text='<%# Eval("cname") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtname" runat="server" Text='<%# Eval("cname") %>' Width="140"></asp:TextBox>
                    </EditItemTemplate>
              </asp:TemplateField>  
                     <asp:TemplateField HeaderText="User name" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblcunm" runat="server" Text='<%# Eval("uname") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtcunm" runat="server" Text='<%# Eval("uname") %>' Width="140"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
          <asp:TemplateField HeaderText="Email" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblcmail" runat="server" Text='<%# Eval("cemail") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtcmail" runat="server" Text='<%# Eval("cemail") %>' Width="140"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                     <asp:TemplateField HeaderText="Mobile No" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblcmno" runat="server" Text='<%# Eval("cmno") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtcmno" runat="server" Text='<%# Eval("cmno") %>' Width="140"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                     <asp:TemplateField HeaderText="Gender" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblcgen" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtcgen" runat="server" Text='<%# Eval("gender") %>' Width="140"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
          <asp:CommandField ButtonType="Link"  ShowDeleteButton="true"
                    ItemStyle-Width="150" />
            </Columns>



             </asp:GridView>
             
             <br><br>
             <br>
             </fieldset>
        </div>

    </asp:Content>