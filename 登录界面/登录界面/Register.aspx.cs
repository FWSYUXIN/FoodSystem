using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 登录界面
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnRegist_Click(object sender, EventArgs e)
        {
            string RName = txtRName.Text;
            string Pwd = txtPwd.Text;
            string Pwd2 = txtPwd2.Text;
            string email = txtemail.Text;
            Model.Regist regist = new Model.Regist();
            regist.RegistName = RName;
            regist.Rpwd = Pwd;
            regist.Rpwd = Pwd2;
            regist.REmail = email;
            if (DAL.RgistDAL.InsertRegist(regist)>0)
            {
                Response.Write("<script>alert('注册成功！')</script>");
                Response.Redirect("FoodInformation.aspx");
            }
            else
            {
                Response.Write("<script>alert('注册失败！')</script>");
            }
        }
    }
}