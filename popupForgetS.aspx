<%@ Page Language="C#" AutoEventWireup="true" CodeFile="popupForgetS.aspx.cs" Inherits="popupForgetReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>Forget Password</title>
     <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


</head>
<body>
    <form id="form1" runat="server">
       
     <asp:Panel ID="regMob" runat="server" >
         <div class="container">
        <table align="center">
            <tr>
                 <td><asp:Label ID="lblEmail" runat="server" Text="Registerd Email"></asp:Label></td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
            </tr>
             <tr align="center">
                <td>
                    <asp:Button ID="btnGetOtp" runat="server" Text="Get Otp" OnClick="btnGetOtp_Click" class="btn btn-success"/>

                </td>
            </tr>
        </table>
             </div>
         </asp:Panel>

        <asp:Panel ID="verification" runat="server" Visible="false">
            <div class="container">
        <table align="center">
            <tr>
                 <td><asp:Label ID="lblVerification" runat="server" Text="Enter OTP"></asp:Label></td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtVerification" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Button ID="btnVerify" runat="server" Text="Verify" OnClick="btnVerify_Click" OnClientClick="hid" class="btn btn-success" />

                </td>
            </tr>
        </table>
                </div>
        </asp:Panel>
        
    <asp:Panel  ID="NewPwd" runat="server" Visible="false">
        <div class="container">
        <table align="center">
            <tr>
                 <td><asp:Label ID="lblNewPwd" runat="server" Text="Enter New Password"></asp:Label></td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtNewPwd" runat="server" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" class="btn btn-success" />

                </td>
            </tr>
            </table></div>
        </asp:Panel>


    
    </div>
        <asp:Label ID="lblupdated" runat="server" Text="Password Updated" Visible="false"></asp:Label>
    </form>
</body>
</html>
