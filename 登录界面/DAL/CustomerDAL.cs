using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Model;

namespace DAL
{
   public class CustomerDAL
    {
        /// <summary>
        /// 获取用户信息的方法
        /// </summary>
        /// <returns>查询到用户信息集合</returns>
        public static List<Model.Customer> GetCustomerInfo()
        {
            List<Model.Customer> modelList = new List<Model.Customer>();
            SqlDataReader dr = DBHelper.ExecuteReader("P_GetCustomerInfo", CommandType.StoredProcedure);
            if (dr != null)
            {
                while (dr.Read())
                {
                    modelList.Add(new Model.Customer()
                    {
                        Age = (int)dr["Age"],
                        PhoneNumber = dr["PhoneNumber"].ToString(),
                        Password = dr["Password"].ToString(),
                        LoginName = dr["LoginName"].ToString(),
                        Answer = dr["Answer"].ToString(),
                        Birthday = (DateTime)dr["Birthday"],
                        CustomerName = dr["CustomerName"].ToString(),
                        Emial = dr["Emial"].ToString(),
                        Gender = dr["Gender"].ToString(),
                        ID = dr["ID"].ToString(),
                        PlaceBirth = dr["PlaceBirth"].ToString(),
                        Question = dr["Question"].ToString(),
                        State = (int)dr["State"],
                    });
                }
            }
            return modelList;
        }
     /// <summary>
     /// 登录方法
     /// </summary>
     /// <param name="UserName">登录名称</param>
     /// <param name="pwd">登录密码</param>
     /// <returns></returns>
        public static int SelectLogin(string UserName,string pwd)
        {
            SqlParameter[] p1 =
            {

                new SqlParameter("@UserName",UserName),
                new SqlParameter("@pwd",pwd)
            };
            string sql = "select count(*) from Customer where State=0 and LoginName = @UserName and Password =@pwd ";
            return DBHelper.ExcuteReadCount(sql,p1);
        }
        /// <summary>
        /// 新用户注册方法（）
        /// </summary>
        /// <param name="customer">用户输入的信息集合</param>
        /// <returns>数据库中受影响的行数，如果大于0,则注册成功！，否则注册失败!</returns>
        public static int InsertCustomer(Model.Customer customer)
        {
            string sql = " insert into Customer([ID],[LoginName],[Password],[Emial]) values(@ID,@LoginName,@Pwd,@emial)";
            SqlParameter[] P ={
                                 new SqlParameter("@ID",System.Guid.NewGuid().ToString()),
                                 new SqlParameter("@LoginName",customer.LoginName),
                                 new SqlParameter("@Pwd",customer.Password),
                                 new SqlParameter("@emial",customer.Emial),
                             };
            return DBHelper.ExecuteNonQuery(sql, System.Data.CommandType.Text, P);
        }
        /// <summary>
        /// 用户修改密码方法（）
        /// </summary>
        /// <param name="customer">用户输入的信息集合</param>
        /// <returns>数据库中受影响的行数，如果大于0,则密码修改成功！，否则失败!</returns>
        public static int UpdateCustomerPwd(Model.Customer customer)
        {
            SqlParameter[] P ={
                                   new SqlParameter("@ID",customer.ID),
                                   new SqlParameter("@Pwd",customer.Password),
                               };
            return DBHelper.ExecuteNonQuery("P_CustomerChangePwd", System.Data.CommandType.StoredProcedure, P);
        }
        /// <summary>
        /// 冻结用户账号方法
        /// </summary>
        /// <param name="ID">用户ID</param>
        /// <returns>数据库中受影响的行数，如果大于0,则冻结成功！，否则失败!</returns>
        public static int DeleteCustomer(string ID)
        {
            SqlParameter[] P ={
                                   new SqlParameter("@ID",ID),
                               };
            return DBHelper.ExecuteNonQuery("P_CustomerDelete", System.Data.CommandType.StoredProcedure, P);
        }
       
    }
}
