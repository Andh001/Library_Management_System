package lib;

import java.sql.*;
import static lib.StringProvider.*;

public class ConnectionProvider {
    public static Connection con=null;
    
    static
    {
        try{
            Class.forName(DRIVER);
            con = DriverManager.getConnection(CONNECTION_URL,USERNAME,PASSWORD);
        }catch(Exception e)
        {
            e.printStackTrace();
        }
    }
    
    public static Connection getConnecion()
    {
        return con;
    }
    
}
