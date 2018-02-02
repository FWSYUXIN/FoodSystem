using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using Model;

namespace BLL
{
   public class CustomerBLL
    {
        ///// <summary>
        ///// 方法：用户登录
        ///// </summary>
        ///// <param name="uid">用户名</param>
        ///// <param name="pwd">密码</param>
        ///// <returns>用户对象</returns>
        //public Model.Customer Login(string uid, string pwd)
        //{
        //    pwd = Encryption(pwd);
        //    Model.Customer customer = new Model.Customer();
        //    List<Model.Customer> cus = new DAL.CustomerDAL().GetCustomer(" and LoginName='" + uid + "'" + "and assword='" + pwd + "'");

        //    if (cus.Count == 0)
        //    {
        //        customer.LoginName = "用户名不存在！";
        //        return customer;
        //    }

        //    if (cus[0].Password != pwd)
        //    {
        //        customer.Password = "密码错误！";
        //        return customer;
        //    }

        //    return cus[0];
        //}

        public static int SelectLogin(string UserName,string pwd)
        {
            return DAL.CustomerDAL.SelectLogin(UserName,pwd);
        }
        /// <summary>
        /// 获取用户信息的方法
        /// </summary>
        /// <returns>查询到用户信息集合</returns>
        public static List<Model.Customer> GetCustomerInfo()
        {
            return DAL.CustomerDAL.GetCustomerInfo();
        }
       
        /// <summary>
        /// 新用户注册方法（）
        /// </summary>
        /// <param name="customer">用户输入的信息集合</param>
        /// <returns>数据库中受影响的行数，如果大于0,则注册成功！，否则注册失败!</returns>
        public static int InsertCustomer(Model.Customer customer)
        {
            return DAL.CustomerDAL.InsertCustomer(customer);
        }
        /// <summary>
        /// 用户修改密码方法（）
        /// </summary>
        /// <param name="customer">用户输入的信息集合</param>
        /// <returns>数据库中受影响的行数，如果大于0,则密码修改成功！，否则失败!</returns>
        public static int UpdateCustomerPwd(Model.Customer customer)
        {
            return DAL.CustomerDAL.UpdateCustomerPwd(customer);
        }
        /// <summary>
        /// 冻结用户账号方法
        /// </summary>
        /// <param name="ID">用户ID</param>
        /// <returns>数据库中受影响的行数，如果大于0,则冻结成功！，否则失败!</returns>
        public static int DeleteCustomer(string ID)
        {
            return DAL.CustomerDAL.DeleteCustomer(ID);
        }
        //public static int SelectCustomerLoginName(string LoginName)
        //{
        //    return DAL.CustomerDAL.SelectCustomerLoginName(LoginName);
        //}
        ///// <summary>
        ///// 方法：用户登录
        ///// </summary>
        ///// <param name="uid">用户名</param>
        ///// <param name="pwd">密码</param>
        ///// <returns>用户对象</returns>
        //public Model.Customer Login(string uid, string pwd)
        //{
        //    pwd = Encryption(pwd);
        //    Model.Customer customer = new Model.Customer();
        //    List<Model.Customer> cus = new DAL.CustomerDAL().GetCustomerInfo(" and LoginName='" + uid + "'");

        //    if (cus.Count == 0)
        //    {
        //        customer.LoginInfo = "用户名不存在！";
        //        return customer;
        //    }

        //    if (cus[0].Password != pwd)
        //    {
        //        customer.LoginInfo = "密码错误！";
        //        return customer;
        //    }

        //    return cus[0];
        //}

        /// <summary>
        /// 方法：对密码进行MD5加密
        /// </summary>
        /// <param name="pwd">原始密码</param>
        /// <returns>加密后的密码</returns>
        private string Encryption(string pwd)
        {
            System.Security.Cryptography.MD5CryptoServiceProvider md5 = new System.Security.Cryptography.MD5CryptoServiceProvider();
            byte[] bytes = System.Text.Encoding.UTF8.GetBytes(pwd);
            bytes = md5.ComputeHash(bytes);
            return BitConverter.ToString(bytes);
        }
    }
}
