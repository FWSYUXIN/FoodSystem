using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Model;

namespace DAL
{
   public class FoodTypeDAL
    {
        /// <summary>
        /// 获取商品类型信息方法（）
        /// </summary>
        /// <param name="where">可选参数</param>
        /// <returns>从数据库中查询到的商品类型信息实体集</returns>
        public static List<Model.FoodType> GetFoodType(string where = null)
        {
            List<Model.FoodType> modelList = new List<Model.FoodType>();
            SqlDataReader dr = DBHelper.ExecuteReader("F_SelectFoodType", System.Data.CommandType.StoredProcedure);
            if (dr != null)
            {
                while (dr.Read())
                {
                    modelList.Add(new Model.FoodType() { ID = (int)dr["ID"], TypeName = dr["TypeName"].ToString() });
                }

            }

            DBHelper.Close();
            return modelList;
        }
    }
}
