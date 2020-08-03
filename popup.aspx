<%@ Page Language="C#" AutoEventWireup="true" CodeFile="popup.aspx.cs" Inherits="popup" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>
<style>


</style>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<form id="form1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
    
    <asp:LinkButton ID="fpwd" runat="server">Forget Password</asp:LinkButton>

    <cc1:ModalPopupExtender ID="mp1" runat="server" BehaviorID="mpe" PopupControlID="Panl1" TargetControlID="fpwd"
         CancelControlID="Button2" BackgroundCssClass="Background">
    </cc1:ModalPopupExtender>

    <asp:Panel ID="Panl1" runat="server" CssClass="Popup" align="center" style = "display:none">
    <iframe width="300" height="200" id="irm1" src="popupForgetS.aspx" runat="server"></iframe>
   <br/>
    <asp:Button ID="Button2" runat="server" Text="Close" />
    
</asp:Panel>

    </form>
</body>
</html>
