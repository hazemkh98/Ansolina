using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Gradute_Ansolina
{
    public class Pateint
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-S1OP470\SQLEXPRESS;Initial Catalog=AnsolinaDb;Integrated Security=True");

        public int Register(String PatientNID , String PatientFullName, String PatientMobile, String PatientEmail, String PatientGender, String PatientBDate, String PatientAddress, String loginName, String loginPassword)
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
                com.CommandText = "insert into Patient values(@PatientNID ,@PatientFullName,@PatientMobile,@PatientEmail,@PatientGender,@PatientBDate,@PatientAddress,@loginName,@loginPassword)";
                com.Parameters.AddWithValue("@PatientNID",PatientNID);
                com.Parameters.AddWithValue("@PatientFullName", PatientFullName);
                com.Parameters.AddWithValue("@PatientMobile", PatientMobile);
                com.Parameters.AddWithValue("@PatientEmail", PatientEmail);
                com.Parameters.AddWithValue("@PatientGender", PatientGender);
                com.Parameters.AddWithValue("@PatientBDate", PatientBDate);
                com.Parameters.AddWithValue("@PatientAddress", PatientAddress);
                com.Parameters.AddWithValue("@loginName", loginName);
                com.Parameters.AddWithValue("@loginPassword", loginPassword);

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


        //////////////////////// this function will retrive the patient nid
        public long Login(String loginName, String loginPassword)
        {
            long PatientNID = 0;

            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "select PatientNID from Patient where loginName=@loginName and loginPassword=@loginPassword";
                com.Parameters.AddWithValue("@loginName", loginName);
                com.Parameters.AddWithValue("@loginPassword", loginPassword);

                SqlDataReader Reder= com.ExecuteReader();
                if (Reder.Read())
                {
                    PatientNID =Convert.ToInt64(Reder["PatientNID"]);
                }

            }
            catch
            {
                PatientNID = 0;
            }
            finally
            {
                con.Close();

            }

            return PatientNID;
        }

        public string GetPateintEmail(string PatientNID)
        {
            string PatientEmail = "";

            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "select PatientEmail from Patient where PatientNID=@PatientNID ";
                com.Parameters.AddWithValue("@PatientNID", PatientNID);
                

                SqlDataReader Reder = com.ExecuteReader();
                if (Reder.Read())
                {
                    PatientEmail = Reder["PatientEmail"].ToString();
                }

            }
            catch
            {
                PatientEmail = " ";
            }
            finally
            {
                con.Close();

            }

            return PatientEmail;
        }

        public string GetPateintName(string PatientNID)
        {
            string PatientFullName = "";

            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "select PatientFullName from Patient where PatientNID=@PatientNID ";
                com.Parameters.AddWithValue("@PatientNID", PatientNID);


                SqlDataReader Reder = com.ExecuteReader();
                if (Reder.Read())
                {
                    PatientFullName = Reder["PatientFullName"].ToString();
                }

            }
            catch
            {
                PatientFullName = " ";
            }
            finally
            {
                con.Close();

            }

            return PatientFullName;
        }


        /////////////////////// this function retrive the full name
        public String GetPatientFullName(String PatientNID)
        {
            String PatientFullName = "";

            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "select PatientFullName from Patient where PatientNID=@PatientNID ";
                com.Parameters.AddWithValue("@PatientNID", PatientNID);
              

                SqlDataReader Reder = com.ExecuteReader();
                if (Reder.Read())
                {
                    PatientFullName = Reder["PatientFullName"].ToString();
                }

            }
            catch
            {
                PatientFullName = "";
            }
            finally
            {
                con.Close();

            }

            return PatientFullName;
        }


        public Boolean CheckUSerExist(string loginname)
        {
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "select loginName from Patient where loginName=@loginName ";
                com.Parameters.AddWithValue("@loginName", loginname);


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
            catch(Exception ex)
            {
                return false;
            }
            finally
            {
                con.Close();

            }
        }


    }
}