using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    /// <summary>
    /// 用户实体类
    /// </summary>
   public class Customer
    {
        /// <summary>
        /// 属性：用户ID
        /// </summary>
        public string ID { get; set; }
        /// <summary>
        /// 属性：用户名
        /// </summary>
        public string LoginName { get; set; }
        /// <summary>
        /// 属性：密码
        /// </summary>
        public string Password { get; set; }
        /// <summary>
        /// 属性：用户姓名
        /// </summary>
        public string CustomerName { get; set; }
        /// <summary>
        /// 属性：年龄
        /// </summary>
        public int Age { get; set; }
        /// <summary>
        /// 属性：性别
        /// </summary>
        public string Gender { get; set; }
        /// <summary>
        /// 属性：联系电话
        /// </summary>
        public string PhoneNumber { get; set; }
        /// <summary>
        /// 属性：电子邮箱
        /// </summary>
        public string Emial { get; set; }
        /// <summary>
        /// 属性：出生日期
        /// </summary>
        public DateTime Birthday { get; set; }
        /// <summary>
        /// 属性：籍贯
        /// </summary>
        public string PlaceBirth { get; set; }
        /// <summary>
        /// 属性：密保问题
        /// </summary>
        public string Question { get; set; }
        /// <summary>
        /// 属性：密保答案
        /// </summary>
        public string Answer { get; set; }
        /// <summary>
        /// 属性：状态
        /// </summary>
        public int State { get; set; }

        /// <summary>
        /// 无参构造函数
        /// </summary>
        public Customer() { }
        /// <summary>
        /// 构造函数
        /// </summary>
        /// <param name="id">ID</param>
        /// <param name="loginname">用户名</param>
        /// <param name="pwd">密码</param>
        /// <param name="name">姓名</param>
        /// <param name="age">年龄</param>
        /// <param name="sex">性别</param>
        /// <param name="phone">联系电话</param>
        /// <param name="emial">电子邮箱</param>
        /// <param name="brithday">出生日期</param>
        /// <param name="place">籍贯</param>
        /// <param name="question">密保问题</param>
        /// <param name="answer">密保答案</param>
        /// <param name="state">状态</param>
        public Customer(string id, string loginname, string pwd, string name, int age, string
             sex, string phone, string emial, string brithday, string place, string question, string answer, int state)
        {
            this.ID = id;
            this.LoginName = loginname;
            this.Password = pwd;
            this.CustomerName = name;
            this.Age = age;
            this.Gender = sex;
            this.PhoneNumber = phone;
            this.Emial = emial;
            this.Birthday = Birthday;
            this.PlaceBirth = place;
            this.Question = question;
            this.Answer = answer;
            this.State = state;
        }
       
    }
}
