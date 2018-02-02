using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    /// <summary>
    /// 食物类型
    /// </summary>
   public class FoodType
    {
        /// <summary>
        /// 属性：ID
        /// </summary>
        public int ID { get; set; }
        /// <summary>
        /// 属性：食品类型名称
        /// </summary>
        public string TypeName { get; set; }
        /// <summary>
        /// 无参构造函数
        /// </summary>
        public FoodType() { }
        /// <summary>
        /// 构造函数
        /// </summary>
        /// <param name="id">ID</param>
        /// <param name="name">名称</param>
        public FoodType(int id, string name)
        {
            this.ID = id;
            this.TypeName = name;
        }
    }
}
