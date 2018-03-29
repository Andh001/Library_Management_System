package Admin;
import java.sql.ResultSet;
import lib.*;
public class adminlib {
    
    /*    ResultSet rs = Executor.exer("SELECT ID,NAME FROM LIBRARY2 WHERE USER_ID='"+id+"'");
        String[] ids;
        String[] names = null;
        while(rs.next())
        {
            names += rs.getString("NAME");
            idd += [rs.gets]
        }
    }*/
    
    /*public static String whousr(String ID)throws Exception
    {
        int f=0;
        ResultSet rs = Executor.exer("SELECT USER_ID FROM LIBRARY2 WHERE LIBRARY2.ID = '"+ID+"'");
        if(rs.next()){
            while(rs.next())
                f=1;
        }
        else{
           f=0;
        
        }
        
    }*/
    /*public static String isAvailable(String ID){
        if(ID==null)
            return "Available";
        else
            return ID;
    }*/
    
    /*public void issue(String Userid, String Bookid)throws Exception
    {
        Executor.exnr("UPDATE LIBRARY2 SET USER_ID='"+Userid+"' WHERE ID='"+Bookid+"'");
    }*/
    }
