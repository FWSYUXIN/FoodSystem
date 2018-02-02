using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using Model;

namespace BLL
{
   public class FoodBLL
    {
        /// <summary>
        /// 获取商品信息方法（）
        /// </summary>
        /// <param name="where">查询条件</param>
        /// <returns>查询到的商品信息集合</returns>
        public static List<Model.Food> GetFoodInfo(string where = null)
        {
            return DAL.FoodDAL.GetFoodInfo(where);
        }
    }
}
