<%@ Page Title="" Language="c#" MasterPageFile="~/MasterPagelogin.master" AutoEventWireup="false" CodeFile="login.aspx.cs" Inherits="login" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    

    <div class="container">
        <fieldset>
            <legend><h3 style="margin-left:30px">User Login</h3></legend>
            <!--  <div class='short_explanation'>* required fields</div>-->

            <center></center>
            <div class='container'>
                <asp:Label ID="lbluName" runat="server" Text="User Name:" CssClass="label" /><br />
                <asp:TextBox ID="txtuName" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                    runat="server"
                    ControlToValidate="txtuName"
                    ErrorMessage="*Enter User Name"
                    SetFocusOnError="True" ForeColor="Red" ValidationGroup="a">
                </asp:RequiredFieldValidator><br />
            </div>

            <div class='container'>
                <asp:Label ID="lblpass" runat="server"
                    Text="Password:" CssClass="label" /><br />
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                    runat="server"
                    ControlToValidate="txtpass"
                    ErrorMessage="*Enter Password"
                    SetFocusOnError="True" ForeColor="Red" ValidationGroup="a">
                </asp:RequiredFieldValidator><br />
            </div>

            <div class='container'>
                <asp:Button ID="btnlogin" runat="server"
                    Text="Login" ValidationGroup="a" OnClick="btnlogin_Click" class="btn btn-success" />
                &nbsp
     <asp:Button ID="btnreg" runat="server"
         Text="Register Here" PostBackUrl="~/reg.aspx" class="btn btn-success" />


                </br>
     <asp:ScriptManager ID="ScriptManager1" runat="server">
     </asp:ScriptManager>

                <asp:LinkButton ID="fpwd" runat="server">Forget Password?</asp:LinkButton>

                <cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panl1" TargetControlID="fpwd"
                    CancelControlID="btnPopUpClose" BackgroundCssClass="Background">
                </cc1:ModalPopupExtender>

                <asp:Panel ID="Panl1" runat="server" CssClass="Popup" align="center" Style="display: none">
                    <iframe width="300" height="200" id="irm1" src="popupForget.aspx" runat="server"></iframe>
                    <br />
                    <asp:Button ID="btnPopUpClose" runat="server" Text="Close" />

                </asp:Panel>
        </fieldset>
    </div>

</asp:Content>
