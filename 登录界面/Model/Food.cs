using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    /// <summary>
    /// 食物实体类
    /// </summary>
   public class Food
    {
        /// <summary>
        /// 属性：ID
        /// </summary>
        public string ID { get; set; }
        /// <summary>
        /// 属性：名称
        /// </summary>
        public string Name { get; set; }
        /// <summary>
        /// 属性：简介
        /// </summary>
        public string FDesc { get; set; }
        /// <summary>
        /// 属性：外键 食品类型ID
        /// </summary>
        public int FoodType { get; set; }
        /// <summary>
        /// 属性：价格
        /// </summary>
        public decimal Price { get; set; }
        /// <summary>
        /// 属性：图片
        /// </summary>
        public string FImg { get; set; }
        /// <summary>
        /// 属性：单位
        /// </summary>
        public string FUnit { get; set; }
        /// <summary>
        /// 属性：备注
        /// </summary>
        public string Remark { get; set; }
        /// <summary>
        /// 属性：商家ID
        /// </summary>
        public int StoreID { get; set; }
        /// <summary>
        /// 属性：状态
        /// </summary>
        public int State { get; set; }
        /// <summary>
        ///属性：类型名称
        /// </summary>
        public string TypeName { get; set; }
        /// <summary>
        /// 无参构造函数
        /// </summary>

        public Food() { }
        /// <summary>
        /// 构造函数
        /// </summary>
        /// <param name="id">ID</param>
        /// <param name="name">名称</param>
        /// <param name="fdesc">简介</param>
        /// <param name="typeid">类型ID</param>
        /// <param name="price">价格</param>
        /// <param name="img">图片</param>
        /// <param name="unit">单位</param>
        /// <param name="remark">备注</param>
        /// <param name="storeid">商家ID</param>
        /// <param name="state">状态</param>
        public Food(string id, string name, string fdesc, int typeid, decimal price,
            string img, string unit, string remark, int storeid, int state, string typename)
        {
            this.ID = id;
            this.Name = name;
            this.FDesc = fdesc;
            this.FoodType = typeid;
            this.Price = price;
            this.FImg = img;
            this.FUnit = unit;
            this.Remark = remark;
            this.StoreID = storeid;
            this.State = state;
            this.TypeName = typename;
        }
    }
}
