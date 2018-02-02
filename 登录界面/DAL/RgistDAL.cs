using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;


namespace DAL
{
   public class RgistDAL
    {
        /// <summary>
        /// 新用户注册方法（）
        /// </summary>
        /// <param name="customer">用户输入的信息集合</param>
        /// <returns>数据库中受影响的行数，如果大于0,则注册成功！，否则注册失败!</returns>
        public static int InsertRegist(Model.Regist regist)
        {
            //string sql = " insert into Regist([RegistName],[Rpwd],[REmail]) values(@RegistName,@Rpwd,@REmail)";
            SqlParameter[] P ={
                                
                                 new SqlParameter("@RegistName",regist.RegistName),
                                 new SqlParameter("@Rpwd",regist.Rpwd),
                                 new SqlParameter("@REmail",regist.REmail),
                             };
            return DBHelper.ExecuteNonQuery("P_AddCustomer", System.Data.CommandType.Text, P);
        }
    }
}
