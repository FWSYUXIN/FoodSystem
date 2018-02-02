<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="FoodInformation.aspx.cs" Inherits="登录界面.FoodInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        #myFocus{ width:944px; height:322px;margin-left:-23px;}
    </style>
    
    <script type="text/javascript" src="js/myfocus-2.0.1.min.js"></script>
    <script src="http://libs.baidu.com/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript">
        //设置
        myFocus.set({
	        id:'myFocus',//IDd
  	        pattern:'mF_ladyQ',//风格应用名称
  	        time:2,//切换时间间隔（秒）
  	        trigger:'mouseover',//触发切换模式:'click' (点击)/'mouseover'（鼠标悬停）
  	        //width:450,//设置图片区域宽度（像素）
  	        //height:296,//设置图片区域高度（像素）
  	        //txtHeight:'default'//文字高度设置(像素),'default'(默认高度)/0为隐藏
  	        loadMGTimeout:0,//图片载入时间
        });
    </script>
    <div id="myFocus"><!--焦点图盒子-->
      <div class="pic"><!--图片列表-->
  	    <ul>
            <li><a href="#1"><img src="images/Mian/1.jpg" thumb="" alt="图片1来源于网络，版权属于作者" text="图片1更详细的描述文字" /></a></li>
            <li><a href="#2"><img src="images/Mian/2.jpg" thumb="" alt="版权属于作者，图片2来源于网络" text="图片2更详细的描述文字" /></a></li>
            <li><a href="#3"><img src="images/Mian/3.jpg" thumb="" alt="图片3来源于网络，版权属于作者" text="图片3更详细的描述文字" /></a></li>
            <li><a href="#4"><img src="images/Mian/4.jpg" thumb="" alt="版权属于作者，图片4来源于网络" text="图片4更详细的描述文字" /></a></li>
            
  	    </ul>
      </div>
    </div>
    <div style="width: 105%; height: 100%; border: 0px solid gray;margin:20px 20px 0 -25px;  border-radius: 5px; box-shadow: 0 0 5px;" id="FoodMian">
        <asp:DataList ID="ShopCarList" runat="server" RepeatColumns="7" OnItemCommand="ShopCarList_ItemCommand" OnSelectedIndexChanged="ShopCarList_SelectedIndexChanged" >
            <ItemTemplate>
                <div style="width: 120px; height: 165px; border: 0px solid;  text-align: center; box-shadow: 0 0 5px; border-radius: 5px;margin:7px;">
                    <a href='<%# "ShopCarList.aspx?ID="+Eval("ID") %>'>
                        
                        <img src="images/<%#Eval("FImg") %>.jpg" title='<%#Eval("Name") %>' style="margin:0 auto;margin-top:5px; width:110px;height:120px;"  />
                    </a>

                    <a href="#" title='<%#Eval("Name") %>'><%#Eval("Name") %>
                        <br />
                        <%# Eval("Price","{0:C}") %></a><br />

                </div>
                <div style="text-align:center; color:red;">
                    <%--<asp:LinkButton ID="LinkButton1" runat="server" CommandName="I" title="加入购物车">加入购物车</asp:LinkButton>--%>

                </div>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <%--<div style="width: 120px; height: 165px; border: 0px solid; margin: 10px; padding: 5px; text-align: center; box-shadow: 0 0 5px; border-radius: 5px; margin:3px">--%>
                 <div style="width: 120px; height: 165px; border: 0px solid;  text-align: center; box-shadow: 0 0 5px; border-radius: 5px;margin:7px;">
                    <a href='<%# "ShopCarList.aspx?ID="+Eval("ID") %>'>
                        <img src="images/<%#Eval("FImg") %>.jpg" title='<%#Eval("Name") %>'style="margin:0 auto;margin-top:5px; width:110px;height:120px;" " />
                    </a>
                    <a href="#" title='<%#Eval("Name") %>'><%#Eval("Name") %>
                        <br />
                        <%# Eval("Price","{0:C}") %></a><br />
                </div>
                <div style="text-align: center;">
                    <%--<asp:LinkButton ID="LinkButton1" runat="server" CommandName="I" title="加入购物车">加入购物车</asp:LinkButton>--%>

                </div>
            </AlternatingItemTemplate>
        </asp:DataList>
        <div>
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" OnItemCommand="DataList1_ItemCommand1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" >
            <ItemTemplate>
                <%--<div style="width: 120px; height: 165px; border: 0px solid; margin: 10px; padding: 5px; text-align: center; box-shadow: 0 0 5px; border-radius: 5px; margin:3px">--%>
                <%--<div style="width: 120px; height: 165px; border: 0px solid gray; margin: 10px; padding: 5px; text-align: center; box-shadow: 0 0 5px; border-radius: 5px; margin:3px">--%>
                 <div style="width: 120px; height: 165px; border: 0px solid;  text-align: center; box-shadow: 0 0 5px; border-radius: 5px;margin:7px;">
                    <a href='<%# "ShopCarList.aspx?ID="+Eval("ID") %>'>
                        <img src="images/<%#Eval("FImg") %>.jpg" title='<%#Eval("Name") %>'style="margin:0 auto;margin-top:5px; width:110px;height:120px;"/>
                    </a>

                    <a href="#" title='<%#Eval("Name") %>'><%#Eval("Name") %>
                        <br />
                        <%# Eval("Price","{0:C}") %></a><br />

                </div>
                <div style="text-align:center; color:red;">
                    <%--<asp:LinkButton ID="LinkButton1" runat="server" CommandName="I" title="加入购物车">加入购物车</asp:LinkButton>--%>

                </div>
            </ItemTemplate>
            <AlternatingItemTemplate>
               <%-- <div style="width: 120px; height: 165px; border: 0px solid; margin: 10px; padding: 5px; text-align: center; box-shadow: 0 0 5px; border-radius: 5px; margin:3px">
                <div style="width: 120px; height: 165px; border: 0px solid; margin: 10px; padding: 5px; text-align: center; box-shadow: 0 0 5px; border-radius: 5px; margin:3px ">--%>
                 <div style="width: 120px; height: 165px; border: 0px solid;  text-align: center; box-shadow: 0 0 5px; border-radius: 5px;margin:7px;">
                    <a href='<%# "ShopCarList.aspx?ID="+Eval("ID") %>'>
                        <img src="Image/<%#Eval("FImg") %>.jpg" title='<%#Eval("Name") %>'style="margin:0 auto;margin-top:5px; width:110px;height:120px;" />
                    </a>
                    <a href="#" title='<%#Eval("Name") %>'><%#Eval("Name") %>
                        <br />
                        <%# Eval("Price","{0:C}") %></a><br />
                </div>
                <div style="text-align: center;">
                    <%--<asp:LinkButton ID="LinkButton1" runat="server" CommandName="I" title="加入购物车">加入购物车</asp:LinkButton>--%>
                </div>
            </AlternatingItemTemplate>
        </asp:DataList>
            <div>
                <asp:DataList ID="DataList2" runat="server" RepeatColumns="5" OnItemCommand="DataList2_ItemCommand" OnSelectedIndexChanged="DataList2_SelectedIndexChanged" >
            <ItemTemplate>
                <%--<div style="width: 120px; height: 165px; border: 0px solid; margin: 10px; padding: 5px; text-align: center; box-shadow: 0 0 5px; border-radius: 5px; margin:3px">
                <div style="width: 120px; height: 165px; border: 0px solid; margin: 10px; padding: 5px; text-align: center; box-shadow: 0 0 5px; border-radius: 5px; margin:3px">
                <div style="width: 120px; height: 165px; border: 0px solid gray; margin: 10px; padding: 5px; text-align: center; box-shadow: 0 0 5px; border-radius: 5px; ">--%>
                 <div style="width: 120px; height: 165px; border: 0px solid;  text-align: center; box-shadow: 0 0 5px; border-radius: 5px;margin:7px;">
                    <a href='<%# "ShopCarList.aspx?ID="+Eval("ID") %>'>
                        <img src="images/<%#Eval("FImg") %>.jpg" title='<%#Eval("Name") %>'style="margin:0 auto;margin-top:5px; width:110px;height:120px;"/>
                    </a>

                    <a href="#" title='<%#Eval("Name") %>'><%#Eval("Name") %>
                        <br />
                        <%# Eval("Price","{0:C}") %></a><br />

                </div>
                <div style="text-align:center; color:red;">
                    <%--<asp:LinkButton ID="LinkButton1" runat="server" CommandName="I" title="加入购物车">加入购物车</asp:LinkButton>--%>

                </div>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <%--<div style="width: 120px; height: 165px; border: 0px solid; margin: 10px; padding: 5px; text-align: center; box-shadow: 0 0 5px; border-radius: 5px; margin:3px">--%>
                 <div style="width: 120px; height: 165px; border: 0px solid;  text-align: center; box-shadow: 0 0 5px; border-radius: 5px;margin:7px;">
                    <a href='<%# "ShopCarList.aspx?ID="+Eval("ID") %>'>
                        <img src="images/<%#Eval("FImg") %>.jpg" title='<%#Eval("Name") %>'style="margin:0 auto;margin-top:5px; width:110px;height:120px;" />
                    </a>
                    <a href="#" title='<%#Eval("Name") %>'><%#Eval("Name") %>
                        <br />
                        <%# Eval("Price","{0:C}") %></a><br />
                </div>
                <div style="text-align: center;">
                    <%--<asp:LinkButton ID="LinkButton1" runat="server" CommandName="I" title="加入购物车">加入购物车</asp:LinkButton>--%>
                </div>
            </AlternatingItemTemplate>
        </asp:DataList>
            </div>
        </div>
    </div>   
</asp:Content>

