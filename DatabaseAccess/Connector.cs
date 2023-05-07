using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Oracle.ManagedDataAccess.Client;

namespace DatabaseAccess
{
    public sealed class Connector
    {

        private static string username, password;
        private static OracleConnection connection;
        private static string OWNER = "ATBM";
        private static string OLS = "OLS_Admin";

        private Connector() { }
        private Connector(string user, string pw)
        {
            username = user;
            password = pw;
        }


        public static OracleConnection GetConnectionPhase2(string user, string pw)
        {
            username = user;
            password = pw;
            try
            {

                string connectionString = "Data Source=localhost:1521/QLDTPDB;Persist Security Info=True;User ID=" + username + ";Password=" + password;
                connection = new OracleConnection(connectionString);
                connection.Open();
                return connection;

            }

            catch (Exception ex)
            {
                System.Diagnostics.Debug.Print(ex.Message);
                return null;
            }
        }

        public static OracleConnection GetConnectionPhase1(string user, string pw)
        {
            username = user;
            password = pw;
            try
            {

                string connectionString = "Data Source=localhost;Persist Security Info=True;User ID=" + username + ";Password=" + password;
                connection = new OracleConnection(connectionString);
                connection.Open();
                return connection;

            }

            catch (Exception ex)
            {
                System.Diagnostics.Debug.Print(ex.Message);
                return null;
            }
        }

        public static OracleConnection GetConnection()
        {
            return connection;
        }

        public static string getOwner()
        {
            return OWNER;
        }
        public static string getOLSAdmin()
        {
            return OLS;
        }

    }
}

