using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace DAL
{
    public class DBHelper
    {
        /// <summary>
        /// 连接字符串
        /// </summary>
        static string connStr = ConfigurationManager.ConnectionStrings["SQL"].ConnectionString;
        /// <summary>
        /// 数据库连接对象
        /// </summary>
        static SqlConnection conn = new SqlConnection(connStr);
        public static DataSet DataSet(string sql)
        {
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(sql, conn);
            da.Fill(ds);
            return ds;
        }

        #region 数据库的打开与关闭
        ///// <summary>
        ///// 方法:打开数据库连接
        ///// </summary>
        //public static void Open()
        //{
        //    if (conn.State != ConnectionState.Open)
        //        conn.Open();
        //}
        public static bool OpenConnection()
        {
            //如果连接对象为空，则创建新的连接对象
            if (conn == null)
                conn = new SqlConnection(connStr);

            //打开数据库连接，如成功则返回true，如发生异常则返回false
            try
            {
                conn.Open();
                return true;
            }
            catch
            {
                conn = null;
                return false;
            }
        }
        /// <summary>
        /// 方法:关闭数据库连接
        /// </summary>
        public static void Close()
        {
            if (conn.State != ConnectionState.Closed)
                conn.Close();
        }
        #endregion

        #region 完成数据类型的查询操作
        /// <summary>
        /// 方法:根基指令填充数据表,在此完成查询类型的操作
        /// </summary>
        /// <param name="SQL">SQL查询命令或存储过程名称</param>
        /// <param name="type">查询命令类型,默认为SQL查询语句</param>
        /// <param name="P">参数列表,默认无参</param>
        /// <returns>填充的数据表</returns>
        public static DataSet GetDataSet(string SQL, CommandType type = CommandType.Text, SqlParameter[] P = null)
        {
            DataSet ds = new DataSet();
            try
            {
                SqlDataAdapter da = new SqlDataAdapter(SQL, conn);
                da.Fill(ds);
            }
            catch (Exception ex)
            {
            }

            return ds;
        }
        #endregion

        #region 增删改查操作
        /// <summary>
        /// 方法:对数据库中的表格进行增、删、改操作
        /// </summary>
        /// <param name="SQL">SQL查询命令,默认为SQL语句</param>
        /// <param name="P">参数类型,默认为空</param>
        /// <returns> 受影响的行数</returns>
        public static int ExecuteNonQuery(string SQL, CommandType type = CommandType.Text, SqlParameter[] P = null)
        {
            int count = 0;
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(SQL, conn);
                if (P != null)
                {
                    cmd.Parameters.AddRange(P);
                }
                count = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

            }
            Close();
            return count;
        }
        #endregion

        #region 数据读取
        /// <summary>
        /// 方法:根据指令获取数据读取对象，在此完成查询类型操作
        /// </summary>
        /// <param name="SQL">SQL查询命令,默认为SQL语句</param>
        /// <param name="P">参数列表,默认为空</param>
        /// <returns>数据读取对象</returns>
        public static SqlDataReader ExecuteReader(string SQL, CommandType type = CommandType.Text, SqlParameter[] P = null)
        {
            SqlDataReader dr = null;
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(SQL, conn);
                if (P != null)
                    cmd.Parameters.AddRange(P);
                dr = cmd.ExecuteReader();
            }
            catch (Exception ex)
            {

            }
            return dr;
        }
        #endregion

        #region 返回受影响的行数
        /// <summary>
        /// 查询 首行 首列的值
        /// </summary>
        /// <param name="SQL">SQL查询命令,默认为SQL语句</param>
        /// <param name="P">参数列表</param>
        /// <returns>数据库影响的行数</returns>
        public static int ExcuteReadCount(string SQL, params SqlParameter[] P)
        {
            int count = 0;
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(SQL, conn);
                cmd.Parameters.AddRange(P);
                count = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {

            }
            Close();
            return count;
        }
    }
    #endregion
}
