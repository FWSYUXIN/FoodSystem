using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;
using DAL;

namespace 登录界面
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //读取用户Cookie信息
                if ((Request.Cookies.Count>0)&&(Request.Cookies["LoginName"])!=null)
                {
                    txtUserName.Text = Request.Cookies["LoginName"].Value as string;
                }
            }
        }

    protected void btnShow_Click(object sender, EventArgs e)//登录按钮事件
        {
           
            string name = txtUserName.Text;
            string pwd = txtpwd.Text;
            if (DAL.CustomerDAL.SelectLogin(name, pwd)>0)
            {
                // Response.Write("<script>alert('666')</ script > ");
                // Response.Redirect("Register.aspx");
                Session["Customer"] = name;
                Session["OrderList"] = new List<Model.OrderList>();//创建订单
                Response.Redirect("FoodInformation.aspx");
            }
            else
            {
                Response.Write("登录失败");
            }
            
        }
    }
}
