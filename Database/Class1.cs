using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Database
{
    public class Class1
    {
        SqlConnection sqlConn;
        String connection_String = "Data Source=DESKTOP-HKD1BEO\\SQLEXPRESS;Initial Catalog=ResortEntity;Integrated Security=True";
        SqlCommand sqlCmd;
        SqlDataReader sqlDatareader;

        //this statement is related to insert delete update query that is the main statement of any database record 
        public void AddDelUpdate(String sqlStatement)
        {

            sqlConn = new SqlConnection(connection_String);
            sqlConn.Open();


            sqlCmd = new SqlCommand(sqlStatement, sqlConn);
            sqlCmd.ExecuteNonQuery();

            sqlConn.Close();

        }

        // this code is used to in the details of a prticuar query from the table using the sql statement with the help of where clause 
        public DataTable SearchRecord(String qry)
        {
            DataTable tbl = new DataTable();


            sqlConn = new SqlConnection(connection_String);

            sqlConn.Open();
            sqlCmd = new SqlCommand(qry, sqlConn);

            sqlDatareader = sqlCmd.ExecuteReader();

            tbl.Load(sqlDatareader);

            sqlConn.Close();

            return tbl;
        }

        //this method is used to get the record from the data base if the record match with the table then the method retrun 1 other wise 0
        public int login(String userName, String Password)
        {
            String data = "select * from AdminLogin where LoginID='" + userName + "' and LoginPassword='" + Password + "'";
            DataTable tbl = new DataTable();
            tbl = SearchRecord(data);
            if (tbl.Rows.Count > 0)
            {
                //if valid
                return 1;
            }
            else
            {
                //if wrong 
                return 0;
            }
        }

    }
}
