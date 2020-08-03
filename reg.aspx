<%@ Page Language="C#" Title=""  MasterPageFile="~/MasterPagelogin.master" AutoEventWireup="false" CodeFile="reg.aspx.cs" Inherits="login" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <fieldset>
    <legend><h3 style="margin-left:30px">Registration For User</h3></legend> 
  <!--  <div class='short_explanation'>* required fields</div>-->
    
    <div class='container'>
    <asp:Label ID="lblName" runat="server" 
               Text="Name:" CssClass="label"/><br/>
    <asp:TextBox ID="txtName" runat="server"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                                runat="server" 
                                ControlToValidate="txtName" 
                                ErrorMessage="*Enter Your Name" 
                                SetFocusOnError="True" ForeColor="Red" ValidationGroup="a">
    </asp:RequiredFieldValidator><br />
    </div>
     
    <div class='container'>
    <asp:Label ID="lblEmail" runat="server" 
               Text="Email:" CssClass="label"/><br/>
    <asp:TextBox ID="txtEmail" runat="server"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                                runat="server" 
                                ControlToValidate="txtEmail" 
                                ErrorMessage="*Enter Your Mail Id" 
                                SetFocusOnError="True" ForeColor="Red" ValidationGroup="a">
    </asp:RequiredFieldValidator><br />
    </div> 
        <div class="container">
            <asp:Label ID="lblgender" runat="server" 
               Text="Gender:" CssClass="label"/><br/>
          <!--  <asp:radiobutton runat="server" ID="rb1"  GroupName="gen" TextAlign="right" Text="Male" />
            <asp:radiobutton runat="server" ID="rb2"  GroupName="gen" TextAlign="right" text="Female"/>
            <asp:radiobutton runat="server" ID="rb3"  GroupName="gen"  TextAlign="right" Text="Others"/>-->
            <asp:DropDownList runat="server" ID="ddl">
                <asp:ListItem Value=" ">Please Select</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Others</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class='container'>
    <asp:Label ID="lblnum" runat="server" 
               Text="Mobile Number:" CssClass="label"/><br/>
    <asp:TextBox ID="txtnum" runat="server"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                                runat="server" 
                                ControlToValidate="txtnum" 
                                ErrorMessage="*Enter Your Phone Number" 
                                SetFocusOnError="True" ForeColor="Red" ValidationGroup="a">
    </asp:RequiredFieldValidator><br />
    </div>
        
          <div class='container'>
    <asp:Label ID="lblunm" runat="server" 
               Text="User Name:" CssClass="label"/><br/>
    <asp:TextBox ID="txtunm" runat="server"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                                runat="server" 
                                ControlToValidate="txtunm" 
                                ErrorMessage="*Enter User Name" 
                                SetFocusOnError="True" ForeColor="Red" ValidationGroup="a">
    </asp:RequiredFieldValidator><br />
    </div>

          <div class='container'>
    <asp:Label ID="lblpass" runat="server" 
               Text="Password:" CssClass="label"/><br/>
    <asp:TextBox ID="txtpass" runat="server" TextMode="Password"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
                                runat="server" 
                                ControlToValidate="txtpass" 
                                ErrorMessage="*Enter Password" 
                                SetFocusOnError="True" ForeColor="Red" ValidationGroup="a">
    </asp:RequiredFieldValidator><br />
    </div>

      <div class='container'>
    <asp:Label ID="lblcpass" runat="server" 
               Text="Conform Password:" CssClass="label"/><br/>
    <asp:TextBox ID="txtcpass" runat="server" TextMode="Password"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
                                runat="server" 
                                ControlToValidate="txtcpass" 
                                ErrorMessage="*Enter Your Phone Number" 
                                SetFocusOnError="True" ForeColor="Red" ValidationGroup="a">
    </asp:RequiredFieldValidator>
     <asp:CompareValidator ID="compare1" runat="server" ControlToCompare="txtpass" ControlToValidate="txtcpass" ErrorMessage="*Please Check Your Password" 
                                SetFocusOnError="True" ForeColor="Red" ValidationGroup="a">

     </asp:CompareValidator><br />
    </div>


 <div class='container'>
    <asp:Button ID="btnreg" runat="server" 
                Text="Register" ValidationGroup="a" OnClick="btnreg_Click" class="btn btn-success"/>
     &nbsp;&nbsp;&nbsp;&nbsp;
  <asp:HyperLink ID="hl2" runat="server" Text="Looking For Store Regstration?" NavigateUrl="~/shopreg.aspx"/>
     </div>
        &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <asp:HyperLink ID="hl1" runat="server" Text="All Ready Registried Done ?" NavigateUrl="~/login.aspx"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    </fieldset>
   <asp:Label ID="Label1" runat="server" Text="" />
    </div>

     </asp:Content>  