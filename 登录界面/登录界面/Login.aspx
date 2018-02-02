<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="登录界面.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 70%;
            margin: 0 0 5px 28;
            height: 85px;
        }
        .auto-style5 {
            float: right;
            width: 71px;
        }
        .auto-style11 {
            clear: both;
            height: 0;
            margin: 0;
            padding: 0;
            width: 267px;
        }
        .auto-style12 {
            clear: both;
            height: 14px;
            margin: 0;
            padding: 0;
            width: 188px;
        }
        .auto-style13 {
            width: 135px;
        }
        .auto-style14 {
            width: 107%;
            margin: 0 0 5px 0;
        }
        .auto-style16 {
            margin-left: 20px;
        }
        .auto-style17 {
            margin-left: 35px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="templatemo_center">
            
            	<div class="templatemo_section_1">
               
                	<div class="templatemo_sec_1_top">
                    </div>                    
                  <div class="templatemo_sec_1_mid">
                   	<h1>Member Login</h1>
                   	  <form action="" method="post">
                       	  <div class="auto-style14">
                              <label>账号:</label>
                            <%--<input type="text" value="请输入您的账号" name="UserName" class="field" title="UserName" onfocus="clearText(this)" onblur="clearText(this)" id="UserName" /><br />--%>
                                 <asp:TextBox ID="txtUserName" Text="" runat="server"></asp:TextBox>
                                 
                                    &nbsp;<a href="Register.aspx" style="font-size:12px;text-decoration:none;color:blue;" class="auto-style5">注册账号</a><p></p>
                              <div class="auto-style11">
                                  <label>密码:</label>
                              <%--<input type="password" value="请输入您的密码" name="password" class="field" title="password" onfocus="clearText(this)" onblur="clearText(this)" id="password" /><label>密码:</label></div><br />--%>
                                 <asp:TextBox ID="txtpwd" Text="" runat="server" TextMode="Password"></asp:TextBox>
                                  
                             &nbsp;<a href="#"  style="font-size:12px;text-decoration:none;color:red;" class="auto-style11" >忘记密码?</a>
                                  <p></p>
                                     <asp:Button ID="btnShow" Text="登录" runat="server" Width="61px" OnClick="btnShow_Click" CssClass="auto-style17" />
                                     &nbsp;
                                     <asp:Button ID="btnCancle" Text="取消" runat="server" Width="70px" CssClass="auto-style16"/>
                                 <p id="div2">
                                    <%--<input type="button" id="btnShow" value="登录" alt="Login" class="login" title="Login" />--%>
                                    </p>
                          </div>
                            
						  <div class="auto-style3">
                              &nbsp;
                               <div class="cleaner">
                             
                              </div>
                          </div>
                          <div class="templaetmo_form_row last" style="width: 97%; margin-top: 0">
                              <blockquote class="auto-style13">
                              </blockquote>
                              <div class="auto-style12"></div>
                          </div>
           			  </form>
                    </div>
                    <div class="templatemo_sec_1_bottom" style="width: 212px; height: 1px"></div>
                    
                </div>
         </div>
</asp:Content>

