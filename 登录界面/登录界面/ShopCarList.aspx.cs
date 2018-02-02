using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 登录界面
{
    public partial class ShopCarList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                BindRepeater();
        }
        protected void BindRepeater()
        {
            dgdShowData.DataSource = (List<Model.OrderList>)Session["OrderList"];
            dgdShowData.DataBind();

            decimal total = 0;

            foreach (Model.OrderList o in (List<Model.OrderList>)Session["OrderList"])
                total += o.Fcount * o.Price;

            lblTotal.Text = string.Format("{0:C}", total);
        }
        protected void dgdShowData_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            foreach (Model.OrderList o in (List<Model.OrderList>)Session["ShopCar"])
            {
                if (o.OrderID == (string)e.CommandArgument)
                {
                    switch (e.CommandName)
                    {
                        case "Delete":
                            ((List<Model.OrderList>)Session["OrderList"]).Remove(o);
                            break;
                        case "Add":
                            o.Fcount += 1;
                            break;
                        case "Cut":
                            if (o.Fcount > 1)
                                o.Fcount -= 1;
                            break;
                    }

                    break;
                }
            }

            BindRepeater();
        }

        protected void btnOrder_Click(object sender, EventArgs e)
        {

        }
    }
}