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

                string connectionString = "TNS_ADMIN=C:\\Users\\ADMIN\\Oracle\network\admin;USER ID=" + username + ";password = " + password + ";DATA SOURCE=localhost:1521/QLDTPDB;PERSIST SECURITY INFO=True";
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

    }
}

