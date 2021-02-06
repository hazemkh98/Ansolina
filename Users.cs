using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Gradute_Ansolina
{
    public class Users
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-S1OP470\SQLEXPRESS;Initial Catalog=AnsolinaDb;Integrated Security=True");

        public long Login(String UserName, String UserPassword,string UserType)
        {
            long UserNID = 0;

            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "select UserNID from Users where UserName=@UserName and UserPassword=@UserPassword and UserType=@UserType";
                com.Parameters.AddWithValue("@UserName", UserName);
                com.Parameters.AddWithValue("@UserPassword", UserPassword);
                com.Parameters.AddWithValue("@UserType", UserType);

                SqlDataReader Reder = com.ExecuteReader();
                if (Reder.Read())
                {
                    UserNID = Convert.ToInt64(Reder["UserNID"]);
                }

            }
            catch
            {
                UserNID = 0;
            }
            finally
            {
                con.Close();

            }

            return UserNID;
        }


        /////////////////////// this function retrive the full name
        public String GetUserFullName(String UserNID)
        {
            String UserFullName = "";

            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "select UserFullName from Users where UserNID=@UserNID ";
                com.Parameters.AddWithValue("@UserNID", UserNID);


                SqlDataReader Reder = com.ExecuteReader();
                if (Reder.Read())
                {
                    UserFullName = Reder["UserFullName"].ToString();
                }

            }
            catch
            {
                UserFullName = "";
            }
            finally
            {
                con.Close();

            }

            return UserFullName;
        }

        public Boolean CheckUSerExist(string UserName)
        {
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "select UserName from Users where UserName=@UserName ";
                com.Parameters.AddWithValue("@UserName", UserName);


                SqlDataAdapter da = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }


            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                con.Close();

            }
        }

        public int Register(String UserNID,String UserFullName, String UserName, String UserPassword, String UserType)
        {
            int EffectRow = 0;

            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "insert into Users values(@UserNID ,@UserFullName,@UserName,@UserPassword,@UserType)";
                com.Parameters.AddWithValue("@UserNID", UserNID);
                com.Parameters.AddWithValue("@UserFullName", UserFullName);
                com.Parameters.AddWithValue("@UserName", UserName);
                com.Parameters.AddWithValue("@UserPassword", UserPassword);
                com.Parameters.AddWithValue("@UserType", UserType);

                EffectRow = com.ExecuteNonQuery();

            }
            catch
            {
                EffectRow = 0;
            }
            finally
            {
                con.Close();

            }

            return EffectRow;
        }

    }
}