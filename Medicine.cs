using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;


namespace Gradute_Ansolina
{
    public class Medicine
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-S1OP470\SQLEXPRESS;Initial Catalog=AnsolinaDb;Integrated Security=True");

       
        public int AddMedicine(String MedicineCode, String MedicineName, String MedicineDescription, String PDate, String EDate, String MedicineImage, String MedicineType, String Cost, String MedicineCount)
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
                com.CommandText = "insert into Medicine values(@MedicineCode, @MedicineName, @MedicineDescription, @PDate, @EDate, @MedicineImage, @MedicineType, @Cost, @MedicineCount)";
                com.Parameters.AddWithValue("@MedicineCode", MedicineCode);
                com.Parameters.AddWithValue("@MedicineName", MedicineName);
                com.Parameters.AddWithValue("@MedicineDescription", MedicineDescription);
                com.Parameters.AddWithValue("@PDate", PDate);
                com.Parameters.AddWithValue("@EDate", EDate);
                com.Parameters.AddWithValue("@MedicineImage", MedicineImage);
                com.Parameters.AddWithValue("@MedicineType", MedicineType);
                com.Parameters.AddWithValue("@Cost", Cost);
                com.Parameters.AddWithValue("@MedicineCount", MedicineCount);

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

        public DataTable GetAllMedicine(string searchMI)
        {
            DataTable AllMedicine = new DataTable();

            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "select  MedicineCode as [Code], MedicineName as [Medicine Name], MedicineDescription as [Description],Convert(nvarchar(10),PDate) as [Production Date], Convert(nvarchar(10),EDate) as [Expiry Date], MedicineImage as [Image Path], MedicineType as [Type], Cost as [Cost], MedicineCount as [Count] from Medicine where MedicineName like '%" + searchMI+"%'";

                SqlDataAdapter adapter = new SqlDataAdapter(com);
                adapter.Fill(AllMedicine);

            }
            catch(Exception ex)
            {
                
            }
            finally
            {
                con.Close();

            }

            return AllMedicine;
        }

        public int DeleteMedicine(string MedicineCode)
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
                com.CommandText = "Delete from Medicine where MedicineCode=@MedicineCode";
                com.Parameters.AddWithValue("@MedicineCode", MedicineCode);

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

        public List<string> GetAllMedicines()
        {//we use this for dropdown list
            List<string> Medicine = new List<string>();

            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "select MedicineName ,MedicineCode from Medicine";
                SqlDataReader reader = com.ExecuteReader();
                while (reader.Read())
                {
                    Medicine.Add(reader["MedicineName"].ToString());
                    Medicine.Add(reader["MedicineCode"].ToString());
                }


            }
            catch
            {

            }
            finally
            {
                con.Close();

            }

            return Medicine;
        }

        public DataTable GetAllMedicineByMedicineCode(string MedicineCode)
        {
            DataTable AllMedicine = new DataTable();

            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "select  MedicineCode as [Code], MedicineName as [Medicine Name], MedicineDescription as [Description],Convert(nvarchar(10),PDate) as [Production Date], Convert(nvarchar(10),EDate) as [Expiry Date], MedicineImage as [Image Path], MedicineType as [Type], Cost as [Cost], MedicineCount as [Count] from Medicine where MedicineCode=@MedicineCode";
                com.Parameters.AddWithValue("@MedicineCode", MedicineCode);

                SqlDataAdapter adapter = new SqlDataAdapter(com);
                adapter.Fill(AllMedicine);

            }
            catch (Exception ex)
            {

            }
            finally
            {
                con.Close();

            }

            return AllMedicine;
        }

        public DataTable GetAllMedicineByMedicineCode()
        {
            DataTable AllMedicine = new DataTable();

            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "select  MedicineCode as [Code], MedicineName as [Medicine Name], MedicineDescription as [Description],Convert(nvarchar(10),PDate) as [Production Date], Convert(nvarchar(10),EDate) as [Expiry Date], MedicineImage as [Image Path], MedicineType as [Type], Cost as [Cost], MedicineCount as [Count] from Medicine ";
               

                SqlDataAdapter adapter = new SqlDataAdapter(com);
                adapter.Fill(AllMedicine);

            }
            catch (Exception ex)
            {

            }
            finally
            {
                con.Close();

            }

            return AllMedicine;
        }
        public string GetMedicineImagePath(string MedicineCode)
        {
            string MedicineImagePath = "";

            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "select MedicineImage from Medicine where MedicineCode=@MedicineCode";
                com.Parameters.AddWithValue("@MedicineCode", MedicineCode);

                SqlDataReader reader = com.ExecuteReader();
                if (reader.Read())
                {
                    MedicineImagePath = reader["MedicineImage"].ToString();
                }

            }
            catch
            {
                MedicineImagePath = "";
            }
            finally
            {
                con.Close();

            }

            return MedicineImagePath;
        }

        public List<string> GetMedicinesDetails(string MedicineCode)
        {
            List<string> Medicine = new List<string>();

            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "select MedicineName , MedicineDescription ,PDate , EDate , MedicineImage , MedicineType , Cost , MedicineCount  from Medicine where MedicineCode=@MedicineCode ";
                com.Parameters.AddWithValue("MedicineCode", MedicineCode);
                SqlDataReader reader = com.ExecuteReader();

                if (reader.Read())
                {
                    Medicine.Add(reader["MedicineName"].ToString());
                    Medicine.Add(reader["MedicineDescription"].ToString());
                    Medicine.Add(reader["PDate"].ToString());
                    Medicine.Add(reader["EDate"].ToString());
                    Medicine.Add(reader["MedicineImage"].ToString());
                    Medicine.Add(reader["MedicineType"].ToString());
                    Medicine.Add(reader["Cost"].ToString());
                    Medicine.Add(reader["MedicineCount"].ToString());
                }


            }
            catch
            {

            }
            finally
            {
                con.Close();

            }

            return Medicine;
        }

        public int UpdateMedicine( String MedicineName, String MedicineDescription, String PDate, String EDate, String MedicineImage, String MedicineType, String Cost, String MedicineCount, String MedicineCode)
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
                com.CommandText = "update  Medicine set  MedicineName=@MedicineName, MedicineDescription=@MedicineDescription, PDate=@PDate, EDate=@EDate, MedicineImage=@MedicineImage, MedicineType=@MedicineType, Cost=@Cost, MedicineCount=@MedicineCount where MedicineCode=@MedicineCode";
                com.Parameters.AddWithValue("@MedicineCode", MedicineCode);
                com.Parameters.AddWithValue("@MedicineName", MedicineName);
                com.Parameters.AddWithValue("@MedicineDescription", MedicineDescription);
                com.Parameters.AddWithValue("@PDate", PDate);
                com.Parameters.AddWithValue("@EDate", EDate);
                com.Parameters.AddWithValue("@MedicineImage", MedicineImage);
                com.Parameters.AddWithValue("@MedicineType", MedicineType);
                com.Parameters.AddWithValue("@Cost", Cost);
                com.Parameters.AddWithValue("@MedicineCount", MedicineCount);

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

        public int UpdateMedicine(String MedicineCode, String MedicineDescription)
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
                com.CommandText = "update  Medicine set  MedicineDescription=@MedicineDescription where MedicineCode=@MedicineCode";
                com.Parameters.AddWithValue("@MedicineCode", MedicineCode);
                com.Parameters.AddWithValue("@MedicineDescription", MedicineDescription);
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

        public DataTable GetAllMedicineForView(string MedicineType)
        {
            DataTable AllMedicine = new DataTable();

            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "select  MedicineCode , MedicineName , MedicineDescription ,PDate , EDate , MedicineImage , Cost , MedicineCount  from Medicine where MedicineType=@MedicineType";
                com.Parameters.AddWithValue("@MedicineType", MedicineType);

                SqlDataAdapter adapter = new SqlDataAdapter(com);
                adapter.Fill(AllMedicine);

            }
            catch (Exception ex)
            {

            }
            finally
            {
                con.Close();

            }

            return AllMedicine;
        }

        public DataTable GetAllMedicineForView()
        {
            DataTable AllMedicine = new DataTable();

            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "select  MedicineCode , MedicineName , MedicineDescription ,PDate , EDate , MedicineImage , Cost , MedicineCount  from Medicine ";
                

                SqlDataAdapter adapter = new SqlDataAdapter(com);
                adapter.Fill(AllMedicine);

            }
            catch (Exception ex)
            {

            }
            finally
            {
                con.Close();

            }

            return AllMedicine;
        }

        public int UpdateMedicineCount(String MedicineCode, String MedicineCount)
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
                com.CommandText = "update Medicine set MedicineCount=@MedicineCount where MedicineCode=@MedicineCode";
                com.Parameters.AddWithValue("@MedicineCode", MedicineCode);          
                com.Parameters.AddWithValue("@MedicineCount", MedicineCount);

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

        public int UpdateMedicineCountByMedcineName(String MedicineName , String MedicineCount)
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
                com.CommandText = "update Medicine set MedicineCount=@MedicineCount where MedicineName=@MedicineName";
                com.Parameters.AddWithValue("@MedicineCount", MedicineCount);
                com.Parameters.AddWithValue("@MedicineName", MedicineName);

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

        public int GetMedicineCountByName(string MedicineName)
        {
            int MedicineCount = 0;

            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "select  MedicineCount  from Medicine where MedicineName=@MedicineName ";
                com.Parameters.AddWithValue("MedicineName", MedicineName);
                SqlDataReader reader = com.ExecuteReader();

                if (reader.Read())
                {
                    MedicineCount = Convert.ToInt32(reader["MedicineCount"].ToString());
                }


            }
            catch
            {

            }
            finally
            {
                con.Close();

            }

            return MedicineCount;
        }
        public int GetMedicineCount(string MedicineCode)
        {
            int MedicineCount = 0;

            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "select  MedicineCount  from Medicine where MedicineCode=@MedicineCode ";
                com.Parameters.AddWithValue("MedicineCode", MedicineCode);
                SqlDataReader reader = com.ExecuteReader();

                if (reader.Read())
                {
                    MedicineCount = Convert.ToInt32(reader["MedicineCount"].ToString());
                }


            }
            catch
            {

            }
            finally
            {
                con.Close();

            }

            return MedicineCount;
        }

        public DataTable GetAllMedicine()
        {
            DataTable AllMedicine = new DataTable();

            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "select  MedicineCode as [Code], MedicineName as [Medicine Name], MedicineDescription as [Description],Convert(nvarchar(10),PDate) as [Production Date], Convert(nvarchar(10),EDate) as [Expiry Date], MedicineImage as [Image Path], MedicineType as [Type], Cost as [Cost], MedicineCount as [Count] from Medicine ";

                SqlDataAdapter adapter = new SqlDataAdapter(com);
                adapter.Fill(AllMedicine);

            }
            catch (Exception ex)
            {

            }
            finally
            {
                con.Close();

            }

            return AllMedicine;
        }

    }
}