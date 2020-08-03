<%@ Page Language="C#" MasterPageFile="~/MasterPageadmin.master" AutoEventWireup="true" CodeFile="admin_cat.aspx.cs" Inherits="main_admin" %>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 49px;
        }

    </style>
</head>

    
<body>
    <form id="form1" runat="server">--%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <div class="container">
    <asp:Label ID="Label1" Visible="false" runat="server" ForeColor="#FF3300" Text="Already Exist"></asp:Label></div>
   
    <br />
    

    
        
            <asp:Panel ID="addcat" runat="server">

                
                    <div class='container'><h2>Add category</h2></div>
                    <br />

                    <div class='container'>
                        
                        <asp:Label ID="lblcat" runat="server" Text="Name of category" CssClass="label"></asp:Label>
                        <br>
                        </br>
                        
                            <asp:TextBox ID="txtcat" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rgv1" runat="server" ControlToValidate="txtcat" Text="Name Required !" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class='container'>
                        <asp:Label ID="lblcdec" runat="server" Text="Category Description" CssClass="label"></asp:Label>
                        <br>
                        </br>
                        
                            <asp:TextBox ID="txtcdec" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rgv2" runat="server" ControlToValidate="txtcdec" Text="Description Required !" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class='container'>
                    <asp:Button ID="btnadd" runat="server" Text="ADD" OnClick="btnadd_Click" class="btn btn-success"/>
                   </div>

         
            
            </asp:Panel>
       
    

   
        </br>
        </br>
    <%--    </form>
</body>
</html>--%>
</asp:Content>
