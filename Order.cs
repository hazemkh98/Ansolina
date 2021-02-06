using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Gradute_Ansolina
{
    public class Order
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-S1OP470\SQLEXPRESS;Initial Catalog=AnsolinaDb;Integrated Security=True");

        public int AddOrder(string PatientNID, string CenterName, string OrderType, string OrderDetails, string OrderDate, string OrderTotalCost)
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
                com.CommandText = "insert into PateintOrder values(@PatientNID, @CenterName, @OrderType, @OrderDetails, @OrderDate, @OrderTotalCost)";
                com.Parameters.AddWithValue("@PatientNID", PatientNID);
                com.Parameters.AddWithValue("@CenterName", CenterName);
                com.Parameters.AddWithValue("@OrderType", OrderType);
                com.Parameters.AddWithValue("@OrderDetails", OrderDetails);
                com.Parameters.AddWithValue("@OrderDate", OrderDate);
                com.Parameters.AddWithValue("@OrderTotalCost", OrderTotalCost);


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

        public DataTable GetAllOrdersforPatient(string PatientNID)
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
                com.CommandText = "select CenterName as whereTo_order, OrderType , OrderDetails as Medcine ,OrderTotalCost as Cost ,convert(varchar(10),OrderDate) as Timme from PateintOrder where PatientNID=@PatientNID; ";
                com.Parameters.AddWithValue("PatientNID", PatientNID);
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

        public DataTable GetAllOrdersforAdmine(string OrderDate)
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
                com.CommandText = "select  pa.PatientFullName as PatentName, p.CenterName as whereTo_order, p.OrderType ,p.OrderDetails as Medcine ,p.OrderTotalCost as Cost from PateintOrder as p join Patient as pa on pa.PatientNID=p.PatientNID where OrderDate=@OrderDate;";
                com.Parameters.AddWithValue("OrderDate", OrderDate);
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

        public DataTable GetAllOrdersforPharmascit()
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
                com.CommandText = "select o.OrderID, p.PatientFullName ,o.CenterName ,o.OrderDate , o.OrderDetails ,o.OrderTotalCost from PateintOrder as o join Patient as p on o.PatientNID=p.PatientNID where OrderType='Banned' ";
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

        public int DeleteOrder(string OrderID)
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
                com.CommandText = "Delete from PateintOrder where OrderID=@OrderID";
                com.Parameters.AddWithValue("@OrderID", OrderID);

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

        public string GetMedcineName(string OrderID)
        {
            string OrderDetails = "";

            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand com = new SqlCommand();
                com.Connection = con;
                com.CommandText = "select OrderDetails from PateintOrder where OrderID=@OrderID ";
                com.Parameters.AddWithValue("@OrderID", OrderID);


                SqlDataReader Reder = com.ExecuteReader();
                if (Reder.Read())
                {
                    OrderDetails = Reder["OrderDetails"].ToString();
                }

            }
            catch
            {
                OrderDetails = "";
            }
            finally
            {
                con.Close();

            }

            return OrderDetails;
        }

        public int GetMedicineCount(string MedicineName)
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

        public int UpdateMedicineCountByOrder(String MedicineName, String MedicineCount)
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
    }
}