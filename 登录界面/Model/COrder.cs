using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
        /// <summary>
        /// 订单实体类
        /// </summary>
        public class COrder
        {
            /// <summary>
            /// 属性：ID
            /// </summary>
            public string OrderNo { get; set; }
            /// <summary>
            /// 属性：用户ID
            /// </summary>
            public string CID { get; set; }
            /// <summary>
            /// 属性：下单时间
            /// </summary>
            public DateTime OrderDate { get; set; }
            /// <summary>
            /// 属性：付款金额
            /// </summary>
            public decimal PayMoney { get; set; }
            /// <summary>
            /// 属性：联系电话
            /// </summary>
            public string Phone { get; set; }
            /// <summary>
            /// 属性：收货地址
            /// </summary>
            public string OrderAddress { get; set; }
            /// <summary>
            /// 属性：用户评价
            /// </summary>
            public string CComment { get; set; }
            /// <summary>
            /// 属性：状态
            /// </summary>
            public int State { get; set; }

            /// <summary>
            /// 无擦构造函数
            /// </summary>
            public COrder() { }
            /// <summary>
            /// 构造函数
            /// </summary>
            /// <param name="id">ID</param>
            /// <param name="cid">用户ID</param>
            /// <param name="orderdate">下单时间</param>
            /// <param name="paymoney">付款金额</param>
            /// <param name="phone">联系电话</param>
            /// <param name="address">收货地址</param>
            /// <param name="comment">用户评价</param>
            /// <param name="state">状态</param>
            public COrder(string id, string cid, DateTime orderdate, decimal paymoney,
                string phone, string address, string comment, int state)
            {
                this.OrderNo = id;
                this.CID = cid;
                this.OrderDate = orderdate;
                this.PayMoney = paymoney;
                this.Phone = phone;
                this.OrderAddress = address;
                this.CComment = comment;
                this.State = state;
            }
        }
}
