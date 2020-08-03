<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagestore.master" AutoEventWireup="true" CodeFile="DataOfGiftCard.aspx.cs" Inherits="DataOfGiftCard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <div class="container">

        <h3> <center><asp:Label ID="lblgc" runat="server" Text="Your Gift Cards"></asp:Label></center></h3>
        </br>


                <asp:GridView ID="dgv1" CssClass="table table-hover table-striped"  runat="server" AutoGenerateColumns="false" DataKeyNames="gid" OnRowDeleting="dgv1_RowDeleting">
                    <Columns>
                        <asp:TemplateField HeaderText="GiftCard Id" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="gid" runat="server" Text='<%# Eval("gid") %>'></asp:Label>
                            </ItemTemplate>
                            
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Amount" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lblamount" runat="server" Text='<%# Eval("gamount") %>'></asp:Label>
                            </ItemTemplate>
                            
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Quantity" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lblqty" runat="server" Text='<%# Eval("qty") %>'></asp:Label>
                            </ItemTemplate>
                            
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Expire Date" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="exp" runat="server" Text='<%# Eval("expire") %>'></asp:Label>
                            </ItemTemplate>
                            
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Description" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lbldesc" runat="server" Text='<%# Eval("desc") %>'></asp:Label>
                            </ItemTemplate>
                            
                        </asp:TemplateField>
                        <asp:CommandField ButtonType="Link" ShowDeleteButton="true"
                            ItemStyle-Width="150" />
                    </Columns>

                </asp:GridView>
                    </div>

</asp:Content>

