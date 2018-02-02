using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using System.Data;
using System.Data.SqlClient;


namespace DAL
{
   public class FoodDAL
    {
        /// <summary>
        /// 获取商品信息方法（）
        /// </summary>
        /// <param name="where">查询条件</param>
        /// <returns>查询到的商品信息集合</returns>
        public static List<Model.Food> GetFoodInfo(string where = null)
        {
            List<Model.Food> modelList = new List<Model.Food>();
            string sql = "select  F.*,T.TypeName from Food F inner join FoodType T on F.FoodType=T.ID where F.State=0" + where;
            SqlDataReader dr = DBHelper.ExecuteReader(sql);
            if (dr != null)
            {
                while (dr.Read())
                {
                    modelList.Add(new Model.Food()
                    {
                        FDesc = dr["FDesc"].ToString(),
                        TypeName = dr["TypeName"].ToString(),
                        FImg = dr["FImg"].ToString(),
                        FoodType = (int)dr["FoodType"],
                        FUnit = dr["FUnit"].ToString(),
                        ID = dr["ID"].ToString(),
                        Name = dr["Name"].ToString(),
                        Price = (decimal)dr["Price"],
                        Remark = dr["Remark"].ToString(),
                        State = (int)dr["State"],
                        StoreID = (int)dr["StoreID"]
                    });
                }

            }

            DBHelper.Close();
            return modelList;
        }
    }
}
