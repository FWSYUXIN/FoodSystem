using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

namespace 登录界面
{
    public partial class FoodInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ID = Request["ID"];
            //Response.Write("<script>alert('" + ID + "')</script>");
            ShowData();
        }
        protected void ShowData()
        {
            ShopCarList.DataSource = BLL.FoodBLL.GetFoodInfo();
            ShopCarList.DataBind();
        }

        protected void ShowFood(string Name)//
        {
            ShopCarList.DataSource = (from F in BLL.FoodBLL.GetFoodInfo() where F.Name.Contains(Name) select F).ToList();
            ShopCarList.DataBind();
        }
        protected void AddShopCar()
        {
            Response.Write("<Script>alert('加入购物车成功！')</Script>");
        }
        protected void Show(object sender, EventArgs e)
        {
            AddShopCar();
        }

        protected void ShopCarList_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "I")
            {
                if (Session["Customer"] == null)
                {
                    //Response.Write("<script>alert('请先登入！')</script>");
                }
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {

        }

        protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
        {

        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ShopCarList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}