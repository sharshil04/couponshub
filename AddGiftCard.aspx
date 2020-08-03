<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MasterPagestore.master" CodeFile="AddGiftCard.aspx.cs" Inherits="AddGiftCard" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
    
    <h3> <asp:Label ID="lblsoldgc" runat="server" Text="Add Gift Card"></asp:Label></h3>
    
    <table class = "table" border="0">

        <tr>
            <td>
                <div  class='container'>
                <asp:Label ID="lblgcaamount" runat="server" Text=" Amount :" CssClass="label" />
                <br />
                    <asp:DropDownList ID="ddgcamount" runat="server">
                        <asp:ListItem>250</asp:ListItem>
                        <asp:ListItem>500</asp:ListItem>
                        <asp:ListItem>1000</asp:ListItem>
                        <asp:ListItem>2000</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>
         <tr>
            <td>
                <div  class='container'>
                <asp:Label ID="lbldesc" runat="server" Text=" Description :" CssClass="label" />
                <br />
                <asp:TextBox ID="txtdesc"  runat="server" Text="" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                                runat="server" 
                                ControlToValidate="txtdesc" 
                                ErrorMessage="*Enter Description" 
                                SetFocusOnError="True" ForeColor="Red">
    </asp:RequiredFieldValidator>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div  class='container'>
                <asp:Label ID="lblqty" runat="server" Text=" Quantity" CssClass="label" />
                <br />
                <asp:TextBox ID="txtqty"  runat="server" Text="" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                                runat="server" 
                                ControlToValidate="txtqty" 
                                ErrorMessage="*Enter Quantity" 
                                SetFocusOnError="True" ForeColor="Red">
    </asp:RequiredFieldValidator>
                </div>
            </td>
        </tr>
         <tr>
            <td>
                <div  class='container'>
                <asp:Label ID="lblexp" runat="server" Text="Expire Date" CssClass="label" />
                <br />
                <asp:TextBox ID="txtexp"  runat="server" Text="" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                                runat="server" 
                                ControlToValidate="txtexp" 
                                ErrorMessage="*Enter Expire Date" 
                                SetFocusOnError="True" ForeColor="Red">
    </asp:RequiredFieldValidator>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div  class='container'>
                <asp:Label ID="lblgcode" runat="server" Text="GiftCard Code" CssClass="label" />
                <br />
                <asp:TextBox ID="txtgcode"  runat="server" Text="" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                                runat="server" 
                                ControlToValidate="txtgcode" 
                                ErrorMessage="*Enter Gift Card" 
                                SetFocusOnError="True" ForeColor="Red">
    </asp:RequiredFieldValidator>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div  class='container'>
                <asp:Button ID="btnadd" runat="server" Text="Add"   class="btn btn-success" OnClick="btnadd_Click"/>
                 </div>

            </td>
        </tr>
        
    </table>
        </div>
</asp:Content>
