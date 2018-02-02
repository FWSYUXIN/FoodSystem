using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using DAL;
namespace BLL
{
   public class FoodTypeBLL
    {
        /// <summary>
        /// 获取商品类型信息方法（）
        /// </summary>
        /// <param name="where">可选参数</param>
        /// <returns>从数据库中查询到的商品类型信息实体集</returns>
        public static List<Model.FoodType> GetFoodType(string where = null)
        {
            return DAL.FoodTypeDAL.GetFoodType();
        }
    }
}
