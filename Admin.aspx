<%@ Page Language="C#"   MasterPageFile="~/MasterPagelogin.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>
<%@ MasterType VirtualPath="~/MasterPageadmin.master" %>
<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 411px;
            height: 153px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">--%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       
           <fieldset>
    <div class="container"><h3 style="margin-left:30px"> Admin Login</h3></div>
            
            <br />
             
        <div class='container'>       
        <asp:Label ID="lblnm" runat="server" Text="Username"  CssClass="label"/>
            </br>

        
       <asp:TextBox ID="txtuname" runat="server" OnTextChanged="txtid_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rgv1" runat="server" ControlToValidate="txtuname" Text="Username Required !" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
    <div class='container'>
                <asp:Label ID="lblpwd" runat="server" Text="Password" CssClass="label"></asp:Label><br />
                
                    <asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtpwd" Text="Password Required !" ForeColor="Red"></asp:RequiredFieldValidator>
  </div>
    <div class='container'>
               <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" class="btn btn-success" />
      </div>          
                
      </fieldset>
    
   </asp:Content>
    <%--</form>
</body>
</html>--%>
