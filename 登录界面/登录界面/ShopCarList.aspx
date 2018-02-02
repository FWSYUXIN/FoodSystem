<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ShopCarList.aspx.cs" Inherits="登录界面.ShopCarList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center;">
      <br /><br />
        <p>
            <span style="font-size:xx-large; text-align:center;>">购物车</span>
        </p>
        <p>
            <table style="padding: 5px; width: 100%;background-color:#94AAD6;">
            <asp:Repeater ID="dgdShowData" runat="server" OnItemCommand="dgdShowData_ItemCommand">
                <ItemTemplate>                    
                <tr>
                    <td style="width: 110px;">
                    <a href='<%# "~/FoodDetails.aspx?ID="+Eval("ID") %>'>
                        <asp:Image ID="imgCover" Width="100" Height="120" ImageUrl='<%# "~/images/"+Eval("Cover")+".jpg" %>'
                            runat="server" /></a>
                    </td>
                    <td style="text-align: left;">
                        <a href='<%# "~/FoodDetails.aspx?ID="+Eval("ID") %>'><%# Eval("Name") %></a></td>
                    <td>
                        <%# Eval("Price","{0:C}") %>
                    </td>
                    <td style="text-align: left;">
                        <asp:Button ID="btnCut" runat="server" Text="-" CommandName="Cut" CommandArgument='<%# Eval("ID") %>'  />
                        <asp:TextBox ID="txtPrice" Text='<%# Eval("Count") %>' runat="server" Width="30"></asp:TextBox>
                        <asp:Button ID="btnAdd" runat="server" Text="+" CommandName="Add" CommandArgument='<%# Eval("ID") %>' />
                        </td>
                    <td style="text-align: right;">
                        <asp:LinkButton ID="btnBuy" CommandArgument='<%# Eval("ID") %>'  CommandName="Delete" OnClientClick="return confirm('从购物车中移除图书？');" runat="server">删除</asp:LinkButton>
                    </td>
                </tr>            
                </ItemTemplate>
            </asp:Repeater>
                <tr>
                    <td colspan="5" style="text-align:right">
                        <asp:Label ID="lblTotal" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="5" style="text-align:right">
                        <asp:Button ID="btnOrder" runat="server" Text="生成订单" OnClick="btnOrder_Click" />
                    </td>
                </tr>
                </table>
        </p>
        <p>
            <asp:Label ID="lblMsg" runat="server" ForeColor="Red" Text="" />
            </p>
    </div>
</asp:Content>
