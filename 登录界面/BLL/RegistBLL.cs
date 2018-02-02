using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
namespace BLL
{
   public class RegistBLL
    {
        /// <summary>
        /// 新用户注册方法
        /// </summary>
        /// <param name="regist"></param>
        /// <returns></returns>
        public static int InsertRegist(Model.Regist regist)
        {
            return DAL.RgistDAL.InsertRegist(regist);
        }
    }
}
