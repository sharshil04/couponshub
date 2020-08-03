<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPagelogin.master" CodeFile="shopreg.aspx.cs" Inherits="shopreg" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <div>
    <fieldset>
    <legend ><h3 style="margin-left:30px">Partner Registration</h3></legend> 
  <!--  <div class='short_explanation'>* required fields</div>-->
    
    <div class='container'>
    <asp:Label ID="lblsnm" runat="server" 
               Text="Store Name:" CssClass="label"/><br/>
    <asp:TextBox ID="txtsnm" runat="server"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                                runat="server" 
                                ControlToValidate="txtsnm" 
                                ErrorMessage="*Enter Your Store Name" 
                                SetFocusOnError="True" ForeColor="Red" ValidationGroup="a">
    </asp:RequiredFieldValidator><br />
    </div>
     
    <div class='container'>
    <asp:Label ID="lblSEmail" runat="server" 
               Text="Email:" CssClass="label"/><br/>
    <asp:TextBox ID="txtSEmail" runat="server"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                                runat="server" 
                                ControlToValidate="txtSEmail" 
                                ErrorMessage="*Enter Your Store Mail Id" 
                                SetFocusOnError="True" ForeColor="Red" ValidationGroup="a">
    </asp:RequiredFieldValidator><br />
    </div> 

        <div class='container'>
    <asp:Label ID="lblphone" runat="server" 
               Text="Phone No.:" CssClass="label"/><br/>
    <asp:TextBox ID="txtphone" runat="server"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                                runat="server" 
                                ControlToValidate="txtphone" 
                                ErrorMessage="*Enter Your Phone No" 
                                SetFocusOnError="True" ForeColor="Red" ValidationGroup="a">
    </asp:RequiredFieldValidator><br />
    </div> 
        
        
          <div class='container'>
    <asp:Label ID="lblurl" runat="server" 
               Text="Website Link:" CssClass="label"/><br/>
    <asp:TextBox ID="txturl" runat="server"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                                runat="server" 
                                ControlToValidate="txturl" 
                                ErrorMessage="*Enter Your Website Url" 
                                SetFocusOnError="True" ForeColor="Red" ValidationGroup="a">
    </asp:RequiredFieldValidator><br />
    </div>
        <div class="container">

            <asp:Label ID="lblup" runat="server" 
               Text="Attach Logo:" CssClass="label"/><br/>
            <asp:FileUpload ID="fu" runat="server" />

        &nbsp;</div>

          <div class='container'>
    <asp:Label ID="lblspass" runat="server" 
               Text="Password:" CssClass="label"/><br/>
    <asp:TextBox ID="txtspass" runat="server" TextMode="Password"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
                                runat="server" 
                                ControlToValidate="txtspass" 
                                ErrorMessage="*Enter Password" 
                                SetFocusOnError="True" ForeColor="Red" ValidationGroup="a">
    </asp:RequiredFieldValidator><br />
    </div>

      <div class='container'>
    <asp:Label ID="lblscpass" runat="server" 
               Text="Conform Password:" CssClass="label"/><br/>
    <asp:TextBox ID="txtscpass" runat="server" TextMode="Password"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
                                runat="server" 
                                ControlToValidate="txtscpass" 
                                ErrorMessage="*conform your password" 
                                SetFocusOnError="True" ForeColor="Red" ValidationGroup="a">
    </asp:RequiredFieldValidator>
     <asp:CompareValidator ID="compare1" runat="server" ControlToCompare="txtspass" ControlToValidate="txtscpass" ErrorMessage="*Please Check Your Password" 
                                SetFocusOnError="True" ForeColor="Red" ValidationGroup="a">

     </asp:CompareValidator>
          <br />
          <br />
    </div>


 <div class='container'>
    <asp:Button ID="btnreg" runat="server" 
                Text="Register" ValidationGroup="a" OnClick="btnreg_Click" class="btn btn-success"/>
     &nbsp&nbsp
     <asp:Button ID="btnlogin" runat="server" 
                Text="Login"  PostBackUrl="~/store_login.aspx" OnClick="btnlogin_Click" class="btn btn-success"/>
     </div>
        &nbsp&nbsp
  
    </fieldset>
      </div>
    </asp:Content>


