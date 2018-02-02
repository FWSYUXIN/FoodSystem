using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
  public  class Regist
    {
        /// <summary>
        /// 注册编号
        /// </summary>
        public int ID { get; set; }
        /// <summary>
        /// 注册名字
        /// </summary>
        public string RegistName { get; set; }
        /// <summary>
        /// 注册密码
        /// </summary>
        public string Rpwd { get; set; }
        /// <summary>
        /// 注册邮箱
        /// </summary>
        public string REmail { get; set; }
        /// <summary>
        /// 无参构造函数
        /// </summary>
        public Regist() { }
        /// <summary>
        /// 有参构造函数
        /// </summary>
        /// <param name="id">注册编号</param>
        /// <param name="registName">注册名称</param>
        /// <param name="rpwd">注册密码</param>
        /// <param name="remail">注册邮箱地址</param>
        public Regist(int id ,string registName,string rpwd,string remail)
        {
            this.RegistName = registName;
            this.Rpwd = rpwd;
            this.REmail = remail;
        }
    }
}
