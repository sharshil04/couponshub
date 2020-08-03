<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
    <fieldset>
    <legend><h3 style="margin-left:30px">Contact us</h3></legend> 
    <div class='short_explanation'>* required fields</div>
    
    <div class='container'>
    <asp:Label ID="lblName" runat="server" 
               Text="Your Name*:" CssClass="label"/><br/>
    <asp:TextBox ID="txtName" runat="server"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                                runat="server" 
                                ControlToValidate="txtName" 
                                ErrorMessage="*Enter Your Name" 
                                SetFocusOnError="True" ForeColor="Red">
    </asp:RequiredFieldValidator><br />
    </div>
     
    <div class='container'>
    <asp:Label ID="lblEmail" runat="server" 
               Text="Email*:" CssClass="label"/><br/>
    <asp:TextBox ID="txtMail" runat="server"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                                runat="server" 
                                ControlToValidate="txtMail" 
                                ErrorMessage="*Please Provide 
                                             Your Email Address" 
                                SetFocusOnError="True" ForeColor="Red">
    </asp:RequiredFieldValidator><br />
    </div>
     
    <div class='container'>
    <asp:Label ID="lblSubject" runat="server" 
              Text="Subject*:" CssClass="label"/><br/>
    <asp:TextBox ID="txtSubject" runat="server"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                                runat="server" 
                                ControlToValidate="txtSubject" 
                                ErrorMessage="*Please provide 
                                            reason to contact us" 
                                SetFocusOnError="True" ForeColor="Red">
    </asp:RequiredFieldValidator><br />
    </div>
     
    <div class='container'>
    <asp:Label ID="lblMessage" runat="server" 
               Text="Feedback:" CssClass="label"/><br/>
    <asp:TextBox ID="txtMessage" runat="server" 
                 TextMode="MultiLine" Width="268px"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                                runat="server" 
                                ControlToValidate="txtMessage" 
                                ErrorMessage="*Write your feedback" 
                                SetFocusOnError="True" ForeColor="Red">
    </asp:RequiredFieldValidator><br />
    </div>
     
    <div class='container'>
    <asp:Button ID="btnSubmit" runat="server" 
                Text="Submit" OnClick="btnSubmit_Click"  />
    </div>
  
    </fieldset>
   <asp:Label ID="Label1" runat="server" Text=""/>
    </div>
</asp:Content>

