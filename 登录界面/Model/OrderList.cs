using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    /// <summary>
    /// 详细订单实体类
    /// </summary>
   public class OrderList
    {
        /// <summary>
        /// 属性：ID
        /// </summary>
        public int ID { get; set; }
        /// <summary>
        /// 属性：订单号
        /// </summary>
        public string OrderID { get; set; }
        /// <summary>
        /// 属性：商品ID
        /// </summary>
        public string FoodID { get; set; }
        /// <summary>
        /// 属性：商品单价
        /// </summary>
        public decimal Price { get; set; }
        /// <summary>
        /// 属性：商品数量
        /// </summary>
        public int Fcount { get; set; }
        /// <summary>
        /// 属性：状态
        /// </summary>
        public int State { get; set; }
        /// <summary>
        /// 无参构造函数
        /// </summary>
        public OrderList() { }
        /// <summary>
        /// 构造函数
        /// </summary>
        /// <param name="id">ID</param>
        /// <param name="orderid">订单ID</param>
        /// <param name="foddid">商品ID</param>
        /// <param name="money">商品</param>
        /// <param name="count">商品数量</param>
        /// <param name="state">状态</p价格aram>
        public OrderList(int id, string orderid, string foddid, decimal money, int count, int state)
        {
            this.ID = id;
            this.OrderID = orderid;
            this.FoodID = foddid;
            this.Price = money;
            this.Fcount = count;
            this.State = state;
        }
    }
}
