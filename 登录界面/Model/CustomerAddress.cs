using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    /// <summary>
    /// 用户收货地址
    /// </summary>
   public class CustomerAddress
    {
        /// <summary>
        /// 属性:ID
        /// </summary>
        public int ID { get; set; }
        /// <summary>
        /// 属性：外键 用户ID
        /// </summary>
        public string CID { get; set; }
        /// <summary>
        /// 属性：地址
        /// </summary>
        public string Address { get; set; }
        /// <summary>
        /// 属性：状态
        /// </summary>
        public int State { get; set; }
        /// <summary>
        /// 无参构造函数
        /// </summary>
        public CustomerAddress() { }
        /// <summary>
        /// 构造函数
        /// </summary>
        /// <param name="id">ID</param>
        /// <param name="cid">用户ID</param>
        /// <param name="address">地址</param>
        /// <param name="state">状态</param>
        public CustomerAddress(int id, string cid, string address, int state)
        {
            this.ID = id;
            this.CID = cid;
            this.Address = address;
            this.State = state;
        }
    }
}
