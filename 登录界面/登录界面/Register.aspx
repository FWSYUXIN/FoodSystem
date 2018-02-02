<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="登录界面.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 206px;
            height: 21px;
        }
        .auto-style4 {
            width: 100%;
            margin: 0 0 5px 0;
            height: 76px;
        }
        .auto-style5 {
            width: 66px;
            margin-left: 69px;
        }
        .auto-style7 {
            margin-left: 0px;
            margin-top: 1px;
        }
        .auto-style8 {
            height: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="templatemo_center">
            
            	<div class="templatemo_section_1">
               
                	<div class="templatemo_sec_1_top">
                    </div>                    
                  <div class="templatemo_sec_1_mid">
                   	<h1>Member Register</h1>
                   	  <form action="" method="post">
                       	  <div class="auto-style4">
                              <label class="auto-style8">账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 号:</label>
                            <%--<input type="text" value="请输入您的账号" maxlength="16" id="txtUserName" name="UserName" class="field" title="UserName" onfocus="clearText(this)" onblur="clearText(this)" /><br />--%>
                                 <asp:TextBox ID="txtRName" runat="server"></asp:TextBox>
                              <div class="cleaner">
                                  <label>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 码:</label></div>
                              <%--<input type="password" value="请输入您的密码" id="txtPwd" maxlength="16" class="field" title="password" onfocus="clearText(this)" onblur="clearText(this)" />--%>
                                  <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                                  <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd" ErrorMessage="请输入您的密码！">*</asp:RequiredFieldValidator>--%>
                             <label>重复密码:</label>
                                   <%--<input type="password" value="请再次输入您的密码" name="psassword2" class="field" title="password2" onfocus="clearText(this)" id="password2" /><br />--%>
                                 <asp:TextBox ID="txtPwd2" runat="server" TextMode="Password"></asp:TextBox>
                                  <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPwd" ErrorMessage="请再次输入您的密码！">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" ControlToCompare="txtPwd" ControlToValidate="txtRePwd" runat="server" ErrorMessage="两次密码必须一致！">*</asp:CompareValidator>--%>
                                 <label>电子邮箱:</label>
                                 <%--<input type="email" value="请输入您的电子邮箱" id="txtemail" class="field" title="email" onfocus="clearText(this)" />--%>
                                 <asp:TextBox ID="txtemail" runat="server" AccessKey="e"></asp:TextBox>
                                 <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPwd" ErrorMessage="请输入您的电子邮箱地址！">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtEmail" runat="server" ErrorMessage="电子邮箱地址格式错误！" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>--%>
                                      <asp:Button Text="返回" ID="btnCancle" runat="server" CssClass="auto-style5" />
                                      <asp:Button ID="btnRegist" Text="注册" runat="server" CssClass="auto-style7" OnClick="btnRegist_Click" Height="25px" Width="72px" />
                                 <p id="email"></p>
                                 <%--<label class="auto-style7">手机号码:</label>
                                 <asp:TextBox ID="txtPhoneNumber" runat="server" TextMode="Phone"></asp:TextBox>--%>
                          </div>
                            
						  <div class="templaetmo_form_row">
                              &nbsp;<blockquote>
                                  <p class="auto-style2">
                                      <%--<input type="button" id="btnResgist" name="login" value="注册" alt="Login" class="auto-style6" title="Login" />--%>
                                      <%--<asp:Button ID="btnCancle2" Text="返回" runat="server" Width="66px" CssClass="auto-style3"/>--%>
                                      &nbsp;
                                      <%--<input type="button" id="btnCancle" name="cancle" title="Regist" value="返回" runat="server" class="auto-style5"/></p>--%>
                                      </blockquote>
                              <div class="cleaner">
                              </div>
                          </div>
           			  </form>
                    </div>
                    <div class="templatemo_sec_1_bottom"></div>
                    
                </div>
</asp:Content>
