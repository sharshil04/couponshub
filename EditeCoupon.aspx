<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPagestore.master" CodeFile="EditeCoupon.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
    <div class="container">

        <h3> <center><asp:Label ID="lblsoldgc" runat="server" Text="Edit Coupon"></asp:Label></center></h3>
        </br>
             <asp:GridView ID="dgv1" runat="server" CssClass="table table-hover table-striped" AutoGenerateColumns="false" DataKeyNames="co_id" OnRowDeleting="dgv1_RowDeleting" OnRowEditing="dgv1_RowEditing" OnRowUpdating="dgv1_RowUpdating">
         <Columns>
                   <asp:TemplateField HeaderText="Coupon Title " ItemStyle-Width="150">
           <ItemTemplate>
                        <asp:Label ID="lblName" runat="server" Text='<%# Eval("co_title") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtname" runat="server" Text='<%# Eval("co_title") %>' Width="140"></asp:TextBox>
                    </EditItemTemplate>
              </asp:TemplateField>
             <asp:TemplateField HeaderText="Coupon Code " ItemStyle-Width="150">
           <ItemTemplate>
                        <asp:Label ID="lblccode" runat="server" Text='<%# Eval("co_code") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtccode" runat="server" Text='<%# Eval("co_code") %>' Width="140"></asp:TextBox>
                    </EditItemTemplate>
              </asp:TemplateField>
          <asp:TemplateField HeaderText="Coupon Description" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblcdesc" runat="server" Text='<%# Eval("co_desc") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtcdesc" runat="server" Text='<%# Eval("co_desc") %>' Width="140"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
             <asp:TemplateField HeaderText="Coupon Expiry Date" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblcexpir" runat="server" Text='<%# Eval("co_expiredate") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtcexpir" runat="server" Text='<%# Eval("co_expiredate") %>' Width="140"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
             <asp:TemplateField HeaderText="Coupon Category" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblccat" runat="server" Text='<%# Eval("cid") %>'></asp:Label>
                    </ItemTemplate>
                    
                </asp:TemplateField>


          <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true"
                    ItemStyle-Width="150" />
            </Columns>
        
             </asp:GridView>
        </div>


     
</asp:Content>