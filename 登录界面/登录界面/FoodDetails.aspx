<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="FoodDetails.aspx.cs" Inherits="登录界面.FoodDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
    <table style="width: 100%;padding:5px;">
        <tr>
            <td colspan="2" style="text-align: center;">
                <asp:Image ID="imgCover" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 200px;">商品名称：
            </td>
            <td style="text-align: left;">
                <asp:Label ID="lblTitle" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; " class="auto-style1">价格：
            </td>
            <td style="text-align: left; ">
                <asp:Label ID="lblPrice" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 200px; height: 18px;">商品信息：
            </td>
            <td style="text-align: left; height: 18px;">
                <asp:Label ID="lblPublisher" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
           <td style="text-align: right; " class="auto-style1">运费：
            </td>
            <td style="text-align: left; ">
                <asp:Label ID="lblYunfei" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
