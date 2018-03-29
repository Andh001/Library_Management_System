package lib;

import java.sql.*;

public class Executor {
    static Connection con = ConnectionProvider.getConnecion();
    
    static PreparedStatement ps;
    
    public static ResultSet exer(String Query) throws Exception
    {
        ps = con.prepareStatement(Query);
        return ps.executeQuery();
    }
    
    public static void exnr(String Query) throws Exception
    {
        ps = con.prepareStatement(Query);
        ps.executeQuery();
    }
}
