<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageadmin.master" AutoEventWireup="true" CodeFile="admin_home.aspx.cs" Inherits="admin_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
    <div class="container">
        </br>
    </br>
        </br>

    <asp:Label ID="lblhello" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#FB6400" ></asp:Label>


    
        </br>
        </br>
        </br>
       
    
    <asp:RadioButtonList ID="rblhome" TextAlign="Right" runat="server" AutoPostBack="True" Font-Size="XX-Large" RepeatDirection="Horizontal" Font-Underline="true" Font-Bold="true" OnSelectedIndexChanged="rblhome_SelectedIndexChanged" Height="19px" Width="280px">
        <asp:ListItem >Add Category</asp:ListItem>  
        <asp:ListItem>User Data</asp:ListItem> 
        <asp:ListItem>Partner Data</asp:ListItem> 
    </asp:RadioButtonList>
        <br />
        </br>
        </div>


</asp:Content>

