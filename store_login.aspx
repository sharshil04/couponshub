<%@ Page Language="C#" MasterPageFile="~/MasterPagelogin.master" AutoEventWireup="false" CodeFile="store_login.aspx.cs" Inherits="store_login" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
    <div class="container">
        
                <h3 >Partner Login</h3>
            
        </br>
          
                <asp:Label ID="lblid" runat="server" Visible="false"></asp:Label>
                <asp:Label ID="lbluName" runat="server"
                    Text="Email:" CssClass="label" /><br />
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
                <asp:Button ID="btnlogin" runat="server"
                    Text="Login" ValidationGroup="a" OnClick="btnlogin_Click1" Style="height: 26px" class="btn btn-success"/>
                &nbsp;&nbsp;
        <asp:Button ID="btnreg" runat="server"
            Text="Register Here" PostBackUrl="~/shopreg.aspx" class="btn btn-success" />


                </br>
       <asp:ScriptManager ID="ScriptManager1" runat="server">
       </asp:ScriptManager>

                <asp:LinkButton ID="fpwd" runat="server">Forget Password?</asp:LinkButton>

                <cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panl1" TargetControlID="fpwd"
                    CancelControlID="btnPopUpClose" BackgroundCssClass="Background">
                </cc1:ModalPopupExtender>

                <asp:Panel ID="Panl1" runat="server" CssClass="Popup" align="center" Style="display: none">
                    <iframe style="width: 300; height: 200;" id="irm1" src="popupForgetS.aspx" runat="server"></iframe>
                    <br />
                    <asp:Button ID="btnPopUpClose" runat="server" Text="Close" />

                </asp:Panel>

            </div>
    </div>
</asp:Content>
