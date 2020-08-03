<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPagestore.master" CodeFile="AddCoupon.aspx.cs" Inherits="AddCoupon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div class='container'><h3>Add Coupon</h3></div>
                   
     <div class='container'>
    <asp:Label ID="lblmsg" runat="server"  Visible="false"
               Text="Hurrrh,Coupon Add Sucessfully !" CssClass="label"/><br/>
                 </div>
    
             
             <div class='container'>
    <asp:Label ID="lblctitle" runat="server" 
               Text="Coupon Title:" CssClass="label"/><br/>
    <asp:TextBox ID="txtctitle" runat="server"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                                runat="server" 
                                ControlToValidate="txtctitle" 
                                ErrorMessage="*Enter Coupon Title" 
                                SetFocusOnError="True" ForeColor="Red">
    </asp:RequiredFieldValidator><br />
    </div>
     
    <div class='container'>
    <asp:Label ID="lblccode" runat="server" 
               Text="Coupon Code:" CssClass="label"/><br/>
    <asp:TextBox ID="txtccode" runat="server"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                                runat="server" 
                                ControlToValidate="txtccode" 
                                ErrorMessage="*Please Provide 
                                             Coupon Code" 
                                SetFocusOnError="True" ForeColor="Red">
    </asp:RequiredFieldValidator><br />
    </div>
     
    <div class='container'>
    <asp:Label ID="lblcdesc" runat="server" 
              Text="Coupon Description :" CssClass="label"/><br/>
    <asp:TextBox ID="txtcdesc" runat="server" TextMode="MultiLine" Width="268px"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                                runat="server" 
                                ControlToValidate="txtcdesc" 
                                ErrorMessage="*Please provide 
                                            Dscription Of Coupon" 
                                SetFocusOnError="True" ForeColor="Red">
    </asp:RequiredFieldValidator><br />
    </div>
     
    <div class='container'>
    <asp:Label ID="lblcexpir" runat="server" 
               Text="Expiry Date:" CssClass="label"/><br/>
    <asp:TextBox ID="txtcexpir" runat="server" 
                  />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                                runat="server" 
                                ControlToValidate="txtcexpir" 
                                ErrorMessage="*Please provide 
                                            Expiry Date Of Coupon" 
                                SetFocusOnError="True" ForeColor="Red">
    </asp:RequiredFieldValidator><br />
    </div>
             <div class='container'>
    <asp:Label ID="lblcat" runat="server" 
               Text="Category Of Coupon:" CssClass="label"/><br/>
                 <asp:DropDownList ID="ddlcat" runat="server" AutoPostBack="false" />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
                                runat="server" 
                                ControlToValidate="ddlcat" 
                                ErrorMessage="*Please provide 
                                            Category Of Coupon" 
                                SetFocusOnError="True" ForeColor="Red">
    </asp:RequiredFieldValidator><br />

     </div>
    <div class='container'>
    <asp:Button ID="btninsert" runat="server" 
                Text="ADD" OnClick="btninsert_Click"  class="btn btn-success"/>
    </div>
  

             <br/>
     
        
</asp:Content>